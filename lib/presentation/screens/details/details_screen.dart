import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mini_app/core/theme/app_colors.dart';
import 'package:mini_app/core/utils/app_assets.dart';
import 'package:mini_app/presentation/screens/details/widgets/anime_details.dart';
import 'package:mini_app/presentation/screens/details/widgets/custom_actions_details.dart';
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
                
                  children: [
                    SizedBox(height: 80),
                    Types(),
                    SizedBox(height: 20),
                    Divider(color: Colors.white, height: 1),
                    Container(
                    margin: EdgeInsetsGeometry.symmetric(
                      horizontal: 17,
                      vertical: 8,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // views
                        CustomActionsDetails(
                          titel: '1.2M views',
                          iconPath: AppAssets.eyeIcon,
                        ),
                        //clap
                        CustomActionsDetails(
                          titel: '2k clap',
                          iconPath: AppAssets.clappind,
                        ),
                        //seasons
                        CustomActionsDetails(
                          titel: '4 seasons',
                          iconPath: AppAssets.movieIcon,
                        ),
                      ],
                    ),
                  ),
                    Divider(color: Colors.white.withOpacity(0.2), height: 1),
                    SizedBox(height: 20),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SvgPicture.asset(
                          AppAssets.fireIcon,
                          
                        ),
                        SizedBox(width: 7),
                        Expanded(
                          child: Text(
                            "Demon Slayer: Kimetsu no Yaiba follows Tanjiro,\n a kind-hearted boy who becomes a demon slayer after his family is slaughtered and his sister is turned into a demon. \nExperience breathtaking battles, stunning animation, and an emotional journey of courage and hope.",
                            style: TextStyle(
                              color: Color(0xffCBC4C4),
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
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
