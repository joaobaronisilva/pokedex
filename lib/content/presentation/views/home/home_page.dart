import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import '../../../../infra/infra.dart';
import '../../../../infra/mvvm/mvvm.dart';
import '../../../domain/entities/entities.dart';
import '../../enums/home_tab_enum.dart';
import '../../extensions/home_tab_extension.dart';
import '../../widgets/pokemon_tile/pokemon_tile.dart';
import 'home_page_state.dart';
import 'home_page_view_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with View<HomePageViewModel>, TickerProviderStateMixin {
  late final TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 0, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          bottom: TabBar(
              onTap: (value) => tabController.animateTo(value),
              controller: tabController,
              enableFeedback: true,
              indicatorColor: context.colorPalette.primary,
              labelColor: context.colorPalette.primary,
              tabs: HomeTabEnum.values
                  .map((e) => Tab(
                        text: e.title,
                      ))
                  .toList()),
        ),
        body: SafeArea(
          child: ViewModelBuilder<HomePageViewModel, HomePageState>(
              viewModel: viewModel,
              builder: (context, state) {
                return TabBarView(
                  controller: tabController,
                  children: [
                    PagedListView<int, PokemonEntity>(
                      pagingController: viewModel.pagingController,
                      builderDelegate: PagedChildBuilderDelegate<PokemonEntity>(
                        itemBuilder: (context, item, index) => PokemonTile(
                          pokemon: item,
                        ),
                      ),
                    ),
                    ListView.builder(
                        itemBuilder: (context, index) => PokemonTile(pokemon: state.items[index]),
                        itemCount: state.items.length),
                  ],
                );
              }),
        ));
  }
}
