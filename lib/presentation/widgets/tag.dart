import 'package:flutter/material.dart';

class Tag extends StatelessWidget {
  const Tag(this.tagName, {super.key});

  final String tagName;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(25, 8, 25, 8),
        child: Text(
          tagName,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
