// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:mini_app/core/theme/app_colors.dart';

class TabsItem extends StatelessWidget {
  final String text ;
  final  bool isSelected ;
  const TabsItem({
    Key? key,
    required this.text, required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: isSelected ? AppColors.lightBlueColor : Colors.white,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: isSelected ? AppColors.whiteColor : AppColors.lightBlueColor,
        ),
      ),
    );
  }
}
