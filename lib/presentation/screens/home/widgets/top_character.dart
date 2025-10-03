import 'package:flutter/material.dart';
import 'package:mini_app/core/theme/app_colors.dart';
import 'package:mini_app/core/utils/app_assets.dart';
import 'package:mini_app/helper/helper_extention.dart';

class TopCharacter extends StatelessWidget {
  const TopCharacter({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage(AppAssets.avatar),
                ),
                SizedBox(height: 8),
                Text(
                  'Kakashi Hatake',
                  style: context.textTheme.bodyMedium?.copyWith(
                    color: AppColors.navyColor,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 6),
                Text('Naruto', style: context.textTheme.bodySmall),
              ],
            ),
          );
        },
      ),
    );
  }
}
