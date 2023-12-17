import 'package:ecommerce_application/SplashScreen/button.dart';
import 'package:ecommerce_application/SplashScreen/main_image_container.dart';
import 'package:flutter/material.dart';

class SplashScreenScaffold extends StatelessWidget {
  const SplashScreenScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    // Material is a conceptual piece
    // of paper on which the UI appears.
    return const Scaffold(
      // Column is a vertical, linear layout.
      backgroundColor: Colors.black45,

      body: Padding(
        padding: EdgeInsets.all(18.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            MainImageContainer(),
            Column(
              children: [
                Padding(
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
                Center(
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
                Button(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
