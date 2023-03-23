import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../core/core.dart';
import '../../../../infra/infra.dart';
import '../../../../infra/mvvm/mvvm.dart';
import '../../../domain/entities/entities.dart';
import '../../views/profile/profile_page.dart';
import 'pokemon_tile_state.dart';
import 'pokemon_tile_view_model.dart';

class PokemonTile extends StatefulWidget {
  const PokemonTile({super.key, required this.pokemon});

  final PokemonEntity pokemon;

  @override
  State<PokemonTile> createState() => _PokemonTileState();
}

class _PokemonTileState extends State<PokemonTile> with View<PokemonTileViewModel>, AutomaticKeepAliveClientMixin {
  @override
  void initState() {
    viewModel.init(widget.pokemon);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return SizedBox(
      height: 100.responsiveHeight,
      child: Card(
        child: ViewModelBuilder<PokemonTileViewModel, PokemonTileState>(
            viewModel: viewModel,
            buildWhen: (previous, current) => previous.pokemon != current.pokemon,
            builder: (context, state) {
              return InkWell(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProfilePage(entity: state.pokemon!),
                    )),
                child: Row(children: [
                  Expanded(
                    child: ListTile(
                      leading: CustomShimmerArea(
                          loading: state.pokemon?.details?.imageUrl == null,
                          child: state.pokemon?.details?.imageUrl == null
                              ? SizedBox(
                                  height: Spacing.xxxl.height,
                                  width: Spacing.xxxl.width,
                                )
                              : Hero(
                                  tag: widget.pokemon,
                                  child: CachedNetworkImage(
                                    height: Spacing.xxxl.height,
                                    width: Spacing.xxxl.width,
                                    imageUrl: state.pokemon!.details!.imageUrl,
                                  ),
                                )),
                      title: Text(
                        state.pokemon!.name,
                        style: TextStyle(color: context.colorPalette.onBackground),
                      ),
                      subtitle: CustomShimmerArea(
                        borderRadius: 10.fontSize,
                        loading: state.pokemon?.details?.imageUrl == null,
                        child: Text(
                          'Habilidades: ${state.pokemon?.details?.abilities.join(', ')}',
                          style: TextStyle(color: context.colorPalette.onBackground),
                        ),
                      ),
                    ),
                  )
                ]),
              );
            }),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
