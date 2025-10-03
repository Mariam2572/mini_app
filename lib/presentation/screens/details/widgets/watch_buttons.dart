import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mini_app/core/app_routes.dart';
import 'package:mini_app/core/theme/app_colors.dart';
import 'package:mini_app/core/utils/app_assets.dart';

class WatchButtons extends StatelessWidget {
  const WatchButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: double.infinity,
      color: Color(0xff16103C),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.gray2,
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            ),
            onPressed: () {},
            child: Row(
              children: [
                SvgPicture.asset(AppAssets.stopWatchIcon),
                SizedBox(width: 8),
                Text(
                  'Preview',
                  style: TextStyle(
                    color: AppColors.whiteColor,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.blue2,
              padding: EdgeInsets.symmetric(horizontal: 28, vertical: 12),
            ),
            onPressed: () {
            Navigator.pushNamed(context, AppRoutes.upgradeScreen);
            },
            child: Row(
              children: [
                SvgPicture.asset(AppAssets.eyeIcon),
                SizedBox(width: 8),
                Text(
                  'Watch',
                  style: TextStyle(
                    color: AppColors.whiteColor,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
