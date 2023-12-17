import 'package:flutter/material.dart';

class MainImageContainer extends StatelessWidget {
  const MainImageContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Center(
          child: Container(
            width: 230,
            height: 230,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.white70,
              ),
            ),
          ),
        ),
        Center(
          child: Container(
            width: 270,
            height: 270,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.white70,
              ),
            ),
          ),
        ),
        Center(
          child: Container(
            width: 310,
            height: 310,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.white70,
              ),
            ),
          ),
        ),
        Center(
          child: Container(
            width: 350,
            height: 350,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.white70,
              ),
            ),
          ),
        ),
        Center(
            child: Transform.translate(
          offset: const Offset(-50, 0),
          child: Transform.scale(
            scale: 1.2, // Increase the scale factor to increase the size
            child: RotationTransition(
              turns: const AlwaysStoppedAnimation(-45 / 360),
              child: Image.asset("assets/images/hero.png"),
            ),
          ),
        ))
      ],
    );
  }
}
