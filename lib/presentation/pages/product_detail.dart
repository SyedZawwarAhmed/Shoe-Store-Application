import 'package:flutter/material.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail(this.productName, this.imageUrl, {super.key});

  final String productName;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(productName),
        ),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(22.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Image.asset(imageUrl),
                  ),
                ),
                Text(productName, style: TextStyle(fontSize: 26))
              ],
            ),
          ),
        )));
  }
}
