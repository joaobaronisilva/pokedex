import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../infra/infra.dart';
import '../../../domain/entities/entities.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key, required this.entity});

  final PokemonEntity entity;

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                pinned: true,
                expandedHeight: 250.responsiveHeight,
                backgroundColor: context.colorPalette.primary,
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Text(
                    'Hi, I\'m ${widget.entity.name}',
                    style: TextStyle(color: context.colorPalette.onPrimary),
                  ),
                  background: Container(
                    color: context.colorPalette.primary,
                    child: Hero(
                      tag: widget.entity,
                      child: CachedNetworkImage(
                          height: Spacing.xxxl.height,
                          width: Spacing.xxxl.width,
                          imageUrl: widget.entity.details!.imageUrl),
                    ),
                  ),
                ),
              ),
            ];
          },
          body: Padding(
            padding: EdgeInsets.only(top: 100.responsiveHeight),
            child: Column(
              children: [
                Text(
                  'Type: ${widget.entity.details!.types.join(', ')}',
                  style: TextStyle(color: context.colorPalette.onBackground),
                ),
                Text(
                  'Abilities: ${widget.entity.details!.abilities.join(', ')}',
                  style: TextStyle(color: context.colorPalette.onBackground),
                ),
              ],
            ),
          )),
    );
  }
}
