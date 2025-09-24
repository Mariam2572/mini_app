import 'package:flutter/material.dart';
import 'package:mini_app/core/theme/app_colors.dart';
import 'package:mini_app/core/utils/app_assets.dart';
import 'package:mini_app/helper/helper_extention.dart';

class AnimeListView extends StatelessWidget {
  const AnimeListView({super.key});

  @override
  Widget build(BuildContext context) {
    return    SizedBox(
      height: 300,
    
      child: ListView.builder(    
              scrollDirection: Axis.horizontal,
              cacheExtent: 10,
              itemBuilder: (context, index) {
      return Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 14.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(AppAssets.anime)),
          ),
          const SizedBox(height: 8),
          Text(
            'Naruto Shippuden',
            style: context.textTheme.bodyMedium?.copyWith(
              color: AppColors.navyColor
            ),
          ),
          const SizedBox(height: 4),
          Text(
            'Mystery',
            style: context.textTheme.bodySmall,
          ),
        ],
      );
              },
            ),
    );
  }
}