import 'package:flutter/material.dart';
import 'package:mini_app/presentation/screens/home/home_screen.dart';

// Example route names
class AppRoutes {
  static const String home = '/home';

}
Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case AppRoutes.home:
      return MaterialPageRoute(builder: (_) => HomeScreen());
    // case AppRoutes.profile:
    //   return MaterialPageRoute(builder: (_) => ProfilePage());
    // case AppRoutes.settings:
    //   return MaterialPageRoute(builder: (_) => SettingsPage());
    default:
      return MaterialPageRoute(
        builder: (_) => Scaffold(
          body: Center(child: Text('No route defined for ${settings.name}')),
        ),
      );
  }
}