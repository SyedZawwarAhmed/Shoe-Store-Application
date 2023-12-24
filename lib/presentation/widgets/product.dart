import 'package:ecommerce_application/presentation/pages/product_detail.dart';
import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  const Product(this.productName, this.price, this.imageUrl, {super.key});

  final String productName;
  final dynamic price;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) {
              return ProductDetail(productName, price, imageUrl);
            },
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              const begin = Offset(0.0, 1.0);
              const end = Offset.zero;
              const curve = Curves.easeInOut;
              var tween =
                  Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
              var offsetAnimation = animation.drive(tween);
              return SlideTransition(
                position: offsetAnimation,
                child: child,
              );
            },
          ),
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.topRight,
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(20, 60, 20, 60),
                decoration: BoxDecoration(color: Colors.grey.shade200),
                child: Image.asset(imageUrl),
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
      ),
    );
  }
}
