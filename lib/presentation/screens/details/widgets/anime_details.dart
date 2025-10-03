import 'package:flutter/material.dart';
import 'package:mini_app/core/utils/app_assets.dart';

class AnimeDetails extends StatelessWidget {
  const AnimeDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      floating: false,

      expandedHeight: 400,
      flexibleSpace: 
      
      Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            // height: MediaQuery.of(context).size.height * 0.64,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppAssets.animeDetails),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: -140,
            child: Image.asset(AppAssets.animeName),
          ),
        ],
      ),
    );
  }
}
