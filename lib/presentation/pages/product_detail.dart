import 'package:ecommerce_application/presentation/widgets/button.dart';
import 'package:flutter/material.dart';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage(this.productName, this.price, this.imageUrl,
      {super.key});

  final String productName;
  final dynamic price;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    var sizes = [3, 4, 5, 6, 7, 8, 9, 10];
    var otherImages = [];
    for (int i = 0; i < 6; i++) {
      otherImages.add(imageUrl);
    }

    return Scaffold(
        appBar: AppBar(
          title: Text(productName),
          actions: [
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/cart');
              },
              child: const Icon(
                Icons.shopping_basket_outlined,
                size: 30,
              ),
            ),
            const Padding(padding: EdgeInsets.all(10))
          ],
        ),
        bottomSheet: Container(
          height: 120,
          decoration: BoxDecoration(
            color: Theme.of(context).scaffoldBackgroundColor,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 7,
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(22.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Price",
                        style: TextStyle(
                          color: Colors.grey.shade700,
                        )),
                    Text(
                      '\$$price.00',
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 200,
                  height: 50,
                  child:
                      Button("Add to Cart", Colors.white, Colors.black, () {}),
                )
              ],
            ),
          ),
        ),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(22.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Container(
                    padding: const EdgeInsets.all(15.0),
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 15.0),
                    child: Image.asset(imageUrl),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: otherImages
                        .map(
                          (image) => Container(
                            width: 55,
                            height: 55,
                            padding: const EdgeInsets.fromLTRB(7, 5, 7, 5),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade400),
                              borderRadius: BorderRadius.circular(3),
                            ),
                            child: Image.asset(image),
                          ),
                        )
                        .toList(),
                  ),
                ),
                Text(
                  productName.toUpperCase(),
                  style: const TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Padding(padding: EdgeInsets.all(5)),
                Text(
                  '\$$price.00',
                  style: TextStyle(
                    color: Colors.grey.shade700,
                    fontSize: 16,
                  ),
                ),
                const Padding(padding: EdgeInsets.all(10)),
                const Text(
                  "Lorem ipsum dolor sit amet consectetur adipisicing elit. Eveniet voluptas inventore, autem tenetur rerum dolorum architecto illo nesciunt? Doloribus veritatis quis consectetur voluptatem a voluptatibus, aliquid fugiat cum hic expedita!",
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
                const Padding(padding: EdgeInsets.all(15)),
                const Text(
                  "Size",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const Padding(padding: EdgeInsets.all(8)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: sizes
                      .map(
                        (size) => Container(
                          width: 38,
                          height: 38,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.grey),
                            // borderRadius: BorderRadius.circular(100),
                          ),
                          child: Center(child: Text('$size')),
                        ),
                      )
                      .toList(),
                ),
              ],
            ),
          ),
        )));
  }
}
