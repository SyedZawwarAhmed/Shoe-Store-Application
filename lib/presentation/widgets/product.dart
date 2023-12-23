import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  const Product(this.productName, this.price, {super.key});

  final String productName;
  final dynamic price;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          alignment: Alignment.topRight,
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(20, 60, 20, 60),
              decoration: BoxDecoration(color: Colors.grey.shade200),
              child: Image.asset("assets/images/hero.png"),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Icon(Icons.favorite_border),
            ),
          ],
        ),
        const Padding(padding: EdgeInsets.all(2)),
        Expanded(
          child: Text(
            productName.toUpperCase(),
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        const Padding(padding: EdgeInsets.all(2)),
        Text(
          '\$$price.00',
          style: const TextStyle(
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
