import 'package:ecommerce_application/presentation/widgets/button.dart';
import 'package:ecommerce_application/presentation/widgets/main_image_container.dart';
import 'package:flutter/material.dart';

class SplashScreenPage extends StatelessWidget {
  const SplashScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black45,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const MainImageContainer(),
            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 30),
                  child: Center(
                    child: Text(
                      'Great way to lift up your style!',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w800,
                        height: 1,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                const Center(
                  child: Text(
                    'Complete your style with awesome shoes and sneakers from us',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.white70,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 60),
                  child: Button("Get Started", Colors.black, Colors.white, () {
                    Navigator.pushNamed(
                      context,
                      '/home',
                    );
                  }),
                ),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
