import 'package:donut_app_2b_rodriguez/utils/donut_tile.dart';
import 'package:flutter/material.dart';

class SmoothieTab extends StatelessWidget {
  // List of smoothies
  final List smoothiesOnSale = [
    // [smoothieName, smoothiePrice, smoothieColor, imageName, smoothieStore]
    ["Strawberry Smoothie", "30", Colors.red, "lib/images/smoothieflut.png", "Jamba Juice"],
    ["Mango Smoothie", "35", Colors.orange, "lib/images/smoothieflut.png", "Jamba Juice"],
    ["Blueberry Smoothie", "32", Colors.blue, "lib/images/smoothieflut.png", "Jamba Juice"],
    ["Banana Smoothie", "28", Colors.yellow, "lib/images/smoothieflut.png", "Jamba Juice"],
    ["Green Smoothie", "33", Colors.green, "lib/images/smoothieflut.png", "Jamba Juice"],
    ["Mixed Berry Smoothie", "37", Colors.purple, "lib/images/smoothieflut.png", "Jamba Juice"],
    ["Avocado Smoothie", "40", Colors.lightGreen, "lib/images/smoothieflut.png", "Jamba Juice"],
    ["Pineapple Smoothie", "38", Colors.amber, "lib/images/smoothieflut.png", "Jamba Juice"],
  ];

  SmoothieTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: smoothiesOnSale.length,
      padding: const EdgeInsets.all(8.0),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.5,
      ),
      itemBuilder: (context, index) {
        return DonutTile(
          donutFlavor: smoothiesOnSale[index][0],
          donutPrice: smoothiesOnSale[index][1],
          donutColor: smoothiesOnSale[index][2],
          imageName: smoothiesOnSale[index][3],
          donutStore: smoothiesOnSale[index][4],
        );
      },
    );
  }
}
