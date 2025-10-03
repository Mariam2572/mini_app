import 'package:flutter/material.dart';
import 'package:mini_app/presentation/screens/details/details_screen.dart';
import 'package:mini_app/presentation/screens/home/home_screen.dart';
import 'package:mini_app/presentation/upgrade/upgrade_screen.dart';

// Example route names
class AppRoutes {
  static const String home = '/home';
  static const String detailsScreen = '/details';
  static const String upgradeScreen = '/upgrade';
}
Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case AppRoutes.home:
      return MaterialPageRoute(builder: (_) => HomeScreen());
    case AppRoutes.detailsScreen:
      return MaterialPageRoute(builder: (_) => DetailsScreen());
    case AppRoutes.upgradeScreen:
      return MaterialPageRoute(builder: (_) => UpgradeScreen());
    default:
      return MaterialPageRoute(
        builder: (_) => Scaffold(
          body: Center(child: Text('No route defined for ${settings.name}')),
        ),
      );
  }
}