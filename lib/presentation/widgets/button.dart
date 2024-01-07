import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button(this.label, this.labelColor, this.backgroundColor, this.onPress,
      {super.key});

  final String label;
  final Color labelColor;
  final Color backgroundColor;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.white10,
      onTap: () => onPress(),
      child: Container(
        padding: const EdgeInsets.fromLTRB(30, 15, 30, 15),
        decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: const BorderRadius.all(Radius.circular(30))),
        child: Center(
          child: Text(
            label,
            style: TextStyle(
              color: labelColor,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}
