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
                  print("Hello world");
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
