import 'package:flutter/material.dart';
import 'package:ecommerce_application/presentation/pages/home_page.dart';
import '../pages/splash_screen_page.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const SplashScreenPage());
      case '/home':
        return MaterialPageRoute(builder: (_) => HomePage());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
