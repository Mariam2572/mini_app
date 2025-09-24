import 'package:flutter/material.dart';
import 'package:mini_app/core/app_routes.dart';
import 'package:mini_app/core/theme/app_theme.dart';
import 'package:mini_app/presentation/screens/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.home,
      onGenerateRoute: generateRoute,
      theme: AppTheme.lightTheme,
      home: HomeScreen(),
    );
  }
}
