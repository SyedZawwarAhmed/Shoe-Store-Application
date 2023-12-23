import 'package:ecommerce_application/presentation/pages/home_page.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 60, 0, 60),
      child: Center(
        child: SizedBox.fromSize(
          size: const Size(300, 50),
          child: ClipRect(
            child: Material(
              color: Colors.white,
              borderRadius: BorderRadius.circular(100),
              child: InkWell(
                splashColor: Colors.white10,
                onTap: () {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) {
                        return HomePage();
                      },
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                        const begin = Offset(0.0, 1.0);
                        const end = Offset.zero;
                        const curve = Curves.easeInOut;
                        var tween = Tween(begin: begin, end: end)
                            .chain(CurveTween(curve: curve));
                        var offsetAnimation = animation.drive(tween);
                        return SlideTransition(
                          position: offsetAnimation,
                          child: child,
                        );
                      },
                    ),
                  );
                },
                child: const Center(
                  child: Text("Get Started",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                      )),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
