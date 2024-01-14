import 'package:ecommerce_application/presentation/routes/app_router.dart';
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
        Navigator.pushNamed(
          context,
          '/productDetailPage',
          arguments: ProductDetailPageArgs(productName, price, imageUrl),
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
