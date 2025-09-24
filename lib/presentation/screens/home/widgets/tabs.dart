// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:mini_app/core/theme/app_colors.dart';
import 'package:mini_app/helper/helper_extention.dart';
import 'package:mini_app/presentation/screens/home/widgets/tabs_item.dart';

class Tabs extends StatelessWidget {
final  List<String> tabs;
final  TabController controller;
  const Tabs({
    Key? key,
    required this.tabs,
  required  this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return     TabBar(
                    controller: controller,
                    labelColor: AppColors.whiteColor,
                    labelStyle: context.textTheme.bodyMedium,
                    isScrollable: true,
                    unselectedLabelColor: AppColors.lightBlueColor,
                    // indicatorColor: Colors.transparent,
                    labelPadding: EdgeInsets.symmetric(horizontal: 4),
                    indicator: BoxDecoration(),
                    indicatorPadding: EdgeInsetsGeometry.symmetric(
                      horizontal: 8,
                      vertical: 8,
                    ),
                    tabAlignment: TabAlignment.start,
                    tabs: tabs
                        .map(
                          (tab) => TabsItem(
                            text: tab,
                            isSelected: tabs[controller.index] == tab,
                          ),
                        )
                        .toList(),
                  )
              ;
  }
}
