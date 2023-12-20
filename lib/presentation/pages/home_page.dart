import 'package:ecommerce_application/presentation/widgets/tag.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var shoeBrands = [
    "Nike",
    "Adidas",
    "Puma",
    "Reebok",
    "New Balance",
    "Converse",
    "Vans",
    "Under Armour",
    "ASICS",
    "Skechers",
    "Fila",
    "Brooks",
    "Merrell",
    "Salomon",
    "Clarks",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(28.0),
          child: Center(
            child: Flexible(
              child: Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.menu,
                        size: 30,
                      ),
                      Icon(
                        Icons.shopping_basket_outlined,
                        size: 30,
                      ),
                    ],
                  ),
                  const Padding(padding: EdgeInsets.all(12)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(
                        width: 300,
                        height: 50,
                        child: Center(
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Seach for brand or product name',
                            ),
                          ),
                        ),
                      ),
                      // SizedBox(
                      const Padding(padding: EdgeInsets.all(5)),
                      Expanded(
                        child: SizedBox(
                          height: 50,
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey)),
                            child: const Icon(Icons.filter_alt_outlined),
                          ),
                        ),
                      ),

                      // ),
                    ],
                  ),
                  const Padding(padding: EdgeInsets.all(20)),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: shoeBrands
                          .map(
                            (brand) => [
                              Tag(brand),
                              const SizedBox(width: 8),
                            ],
                          )
                          .expand((element) => element)
                          .take(shoeBrands.length * 2 - 1)
                          .toList(),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
