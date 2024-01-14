import 'package:ecommerce_application/presentation/widgets/button.dart';
import 'package:flutter/material.dart';

class CartItem {
  const CartItem(this.productName, this.price, this.imageUrl);

  final String productName;
  final dynamic price;
  final String imageUrl;
  final int count = 0;
}

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    var cartItems = const [
      CartItem("AFI Crater flyknit nn (gs)", 670, "assets/images/hero.png"),
      CartItem("AFI Crater flyknit nn (gs)", 670, "assets/images/hero.png"),
      CartItem("AFI Crater flyknit nn (gs)", 670, "assets/images/hero.png"),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Your Cart"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(22),
        child: ListView(
          children: cartItems
              .map((item) => Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            width: 30,
                            padding: const EdgeInsets.fromLTRB(10, 30, 10, 30),
                            decoration:
                                BoxDecoration(color: Colors.grey.shade200),
                            child: Image.asset(item.imageUrl),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  item.productName,
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const Padding(padding: EdgeInsets.all(3)),
                                Text('\$${item.price}.00',
                                    style: TextStyle(
                                      color: Colors.grey.shade700,
                                    ))
                              ],
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.fromLTRB(0, 3, 0, 3),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  width: 30,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                    border: Border.all(
                                      color: Colors.grey.shade400,
                                    ),
                                  ),
                                  child: const Center(
                                    child: Text('-'),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Text(
                                  '${item.count}',
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Padding(
                                  padding: const EdgeInsets.all(.0),
                                  child: Container(
                                    width: 30,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.black,
                                      border: Border.all(
                                        color: Colors.black,
                                      ),
                                    ),
                                    child: const Center(
                                      child: Text(
                                        '+',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ))
              .toList(),
        ),
      ),
      bottomSheet: Container(
        height: 250,
        // height:?
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
            child: ListView(
              children: [
                CheckoutDetailsRow("Subtotal Items (${cartItems.length})", 432),
                const CheckoutDetailsRow("Delivery Fee", 432),
                Divider(
                  color: Colors.grey.shade300,
                  height: 25,
                  thickness: 1,
                ),
                const CheckoutDetailsRow("Total", 432),
                const Padding(padding: EdgeInsets.all(10)),
                Button("Go To Payment", Colors.white, Colors.black, () {}),
              ],
            )),
      ),
    );
  }
}

class CheckoutDetailsRow extends StatelessWidget {
  const CheckoutDetailsRow(this.amountType, this.amount, {super.key});

  final String amountType;
  final dynamic amount;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            amountType,
            style: const TextStyle(color: Colors.grey),
          ),
          Text(
            "\$$amount.00",
            style: const TextStyle(fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }
}
