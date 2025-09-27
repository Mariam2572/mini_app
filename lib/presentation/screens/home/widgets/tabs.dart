// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:mini_app/core/theme/app_colors.dart';
import 'package:mini_app/helper/helper_extention.dart';
class Tabs extends StatelessWidget {
  final List<String> tabs;
  final int selectedIndex;
  final ValueChanged<int> onSelected;

  const Tabs({
    Key? key,
    required this.tabs,
    required this.selectedIndex,
    required this.onSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: tabs.length,
        separatorBuilder: (_, __) => SizedBox(width: 8),
        itemBuilder: (context, index) {
          return FilterChip(
            label: Text(tabs[index]),
            selected: selectedIndex == index,
            onSelected: (_) => onSelected(index),
            selectedColor: AppColors.lightBlueColor,
            backgroundColor: Colors.white,
            showCheckmark: false ,
            labelStyle: context.textTheme.bodyMedium?.copyWith(
              color: selectedIndex == index
                  ? Colors.white
                  : AppColors.lightBlueColor,
            ),
            shape: StadiumBorder(),
          );
        },
      ),
    );
  }
}