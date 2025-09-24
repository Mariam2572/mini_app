import 'package:flutter/material.dart';
import 'package:mini_app/core/utils/app_assets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Stack(
      children: [
        Image.asset(
        AppAssets.homeBackground,
          fit: BoxFit.cover,
          height: double.infinity,
          width: double.infinity,
        ),
    Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        title: Text('Where Anime Comes Alive'),
      ),
      )
      ],
    );
  }
}