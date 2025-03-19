import 'package:donut_app_2b_rodriguez/utils/donut_tile.dart';
import 'package:flutter/material.dart';

class BurgerTab extends StatelessWidget {
  // List of burgers
  final List burgersOnSale = [
    // [burgerName, burgerPrice, burgerColor, imageName, burgerStore]
    ["Cheese Burger", "25", Colors.orange, "lib/images/krabbybyrfer.png.jpg", "Burger King"],
    ["Double Burger", "35", Colors.red, "lib/images/krabbybyrfer.png.jpg", "McDonald's"],
    ["Veggie Burger", "20", Colors.green, "lib/images/krabbybyrfer.png.jpg", "Burger King"],
    ["Bacon Burger", "30", Colors.brown, "lib/images/krabbybyrfer.png.jpg", "Wendy's"],
    ["Spicy Burger", "28", Colors.deepOrange, "lib/images/krabbybyrfer.png.jpg", "In-N-Out"],
    ["Classic Burger", "22", Colors.amber, "lib/images/krabbybyrfer.png.jpg", "Five Guys"],
    ["Mushroom Burger", "32", Colors.grey, "lib/images/krabbybyrfer.png.jpg", "Burger King"],
    ["Deluxe Burger", "40", Colors.pink, "lib/images/krabbybyrfer.png.jpg", "McDonald's"],
  ];

  BurgerTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: burgersOnSale.length,
      padding: const EdgeInsets.all(8.0),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.5,
      ),
      itemBuilder: (context, index) {
        return DonutTile(
          donutFlavor: burgersOnSale[index][0],
          donutPrice: burgersOnSale[index][1],
          donutColor: burgersOnSale[index][2],
          imageName: burgersOnSale[index][3],
          donutStore: burgersOnSale[index][4],
        );
      },
    );
  }
}
