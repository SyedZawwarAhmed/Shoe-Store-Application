import 'package:flutter/material.dart';

class Tag extends StatelessWidget {
  const Tag(this.tagName, {super.key});

  final String tagName;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          // color: Colors.black,
          border: Border.all(color: Colors.grey),
          borderRadius: const BorderRadius.all(Radius.circular(20))),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(30, 8, 30, 8),
        child: Text(
          tagName,
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
