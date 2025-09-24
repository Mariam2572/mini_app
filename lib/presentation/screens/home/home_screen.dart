import 'package:flutter/material.dart';
import 'package:mini_app/core/theme/app_colors.dart';
import 'package:mini_app/core/utils/app_assets.dart';
import 'package:mini_app/helper/helper_extention.dart';
import 'package:mini_app/presentation/screens/home/widgets/anime_List_view.dart';
import 'package:mini_app/presentation/screens/home/widgets/tabs.dart';
import 'package:mini_app/presentation/screens/home/widgets/tabs_item.dart';
import 'package:mini_app/presentation/screens/home/widgets/top_character.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: tabs.length, vsync: this);
    _tabController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  List<String> tabs = [
    'All',
    "Popular",
    "Trending",
    "Nem Releases",
    "Top Rated",
    "Action",
    "Comedy",
    "Drama",
    "Fantasy",
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          AppAssets.homeBackground,
          fit: BoxFit.cover,
          height: double.infinity,
          width: double.infinity,
        ),

        SafeArea(
          child: Material(
            color: Colors.transparent,
            child: Padding(
              padding: const EdgeInsets.only(left: 14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 23),
                    child: Text(
                      'Where Anime Comes Alive',
                      style: context.textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  const SizedBox(height: 23),
                  Tabs(tabs: tabs, controller: _tabController),
                  const SizedBox(height: 20),
                  AnimeListView(),
                  SizedBox(height: 20),
                  Text(
                    'Top Characters',
                    style: context.textTheme.titleLarge?.copyWith(
                      color: AppColors.blackColor,
                    ),
                  ),
                  SizedBox(height: 24),
                  TopCharacter()
              ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
