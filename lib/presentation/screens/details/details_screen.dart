import 'package:flutter/material.dart';
import 'package:mini_app/core/utils/app_assets.dart';
import 'package:mini_app/presentation/screens/details/widgets/anime_details.dart';
import 'package:mini_app/presentation/screens/details/widgets/types.dart';
import 'package:mini_app/presentation/screens/details/widgets/watch_buttons.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          Image.asset(
            AppAssets.detailsBackground,
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          CustomScrollView(
            slivers: [
              AnimeDetails(),
              SliverToBoxAdapter(
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  // crossAxisAlignment: CrossAxisAlignment.,
                  children: [
                    SizedBox(height: 30),
                    Types(),
                    SizedBox(height: 20),
                    Divider(color: Colors.white, height: 1),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        
                      ],
                    ),
                    Divider(color: Colors.white.withOpacity(0.2), height: 1),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: WatchButtons(),
    );
  }
}
