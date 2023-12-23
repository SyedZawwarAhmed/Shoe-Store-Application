import 'package:ecommerce_application/presentation/pages/product_detail.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_application/presentation/pages/home_page.dart';
import '../pages/splash_screen_page.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => const SplashScreenPage(),
        );
      case '/home':
        return MaterialPageRoute(
          builder: (_) => const HomePage(),
        );
      case '/productDetail':
        if (args is ProductDetailArgs) {
          return MaterialPageRoute(
            builder: (_) => ProductDetail(args.productName, args.imageUrl),
          );
        }
        return _errorRoute(settings.name);
      default:
        return _errorRoute(settings.name);
    }
  }

  static Route<dynamic> _errorRoute(String? routeName) {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('No route defined for $routeName'),
        ),
      ),
    );
  }
}

class ProductDetailArgs {
  final String productName;
  final String imageUrl;

  ProductDetailArgs(this.productName, this.imageUrl);
}
