import 'package:ecommerce_application/presentation/pages/cart.dart';
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
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
              const HomePage(),
          transitionsBuilder: pageTransition,
        );
      case '/productDetail':
        if (args is ProductDetailArgs) {
          return PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) =>
                ProductDetail(args.productName, args.price, args.imageUrl),
            transitionsBuilder: pageTransition,
          );
        }
        return _errorRoute(settings.name);
      case '/cart':
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) => const Cart(),
          transitionsBuilder: pageTransition,
        );
      default:
        return _errorRoute(settings.name);
    }
  }

  static Widget pageTransition(context, animation, secondaryAnimation, child) {
    const begin = Offset(1.0, 0.0);
    const end = Offset.zero;
    const curve = Curves.easeInOut;
    var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
    var offsetAnimation = animation.drive(tween);
    return SlideTransition(
      position: offsetAnimation,
      child: child,
    );
  }

  static Route<dynamic> _errorRoute(String? routeName) {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
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
  final dynamic price;
  final String imageUrl;

  ProductDetailArgs(this.productName, this.price, this.imageUrl);
}
