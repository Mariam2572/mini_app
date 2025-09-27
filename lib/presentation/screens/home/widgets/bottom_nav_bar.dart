import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mini_app/core/theme/app_colors.dart';
import 'package:mini_app/core/utils/app_assets.dart';

class NavItem {
  final String iconPath;
  final String label;

  NavItem({required this.iconPath, required this.label});
}

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int selectedIndex = 0;

  final List<NavItem> navItems = [
    NavItem(iconPath: AppAssets.homeIcon, label: 'Home'),
    NavItem(iconPath: AppAssets.menuBook, label: 'Menu'),
    NavItem(iconPath: AppAssets.searchIcon, label: 'Search'),
    NavItem(iconPath: AppAssets.globeIcon, label: 'Globe'),
    NavItem(iconPath: AppAssets.settingsIcon, label: 'Settings'),
  ];

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.shifting,
      backgroundColor: Colors.white,
      selectedItemColor: AppColors.lightBlueColor,
      unselectedItemColor: AppColors.lightBlueColor.withOpacity(0.5),
      showSelectedLabels: false,
      showUnselectedLabels: false,
      currentIndex: selectedIndex,
      onTap: (value) {
        setState(() {
          selectedIndex = value;
        });
      },
      items: List.generate(navItems.length, (index) {
        final isSelected = selectedIndex == index;
        return BottomNavigationBarItem(
          icon: isSelected
              ? Container(
                  decoration: BoxDecoration(
                    color: AppColors.lightBlueColor,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SvgPicture.asset(navItems[index].iconPath, color: Colors.white, height: 20, width: 20),
                      const SizedBox(width: 6),
                      Flexible(child: Text(navItems[index].label, style: const TextStyle(color: Colors.white, fontSize: 14))),
                    ],
                  ),
                )
              : SvgPicture.asset(navItems[index].iconPath, height: 24, width: 24),
          label: '',
        );
      }),
      elevation: 0,
    );
  }
}