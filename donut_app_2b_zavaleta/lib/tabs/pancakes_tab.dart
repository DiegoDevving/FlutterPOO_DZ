import 'package:donut_app_2b_rodriguez/utils/donut_tile.dart';
import 'package:flutter/material.dart';

class PancakesTab extends StatelessWidget {
  // List of pancakes
  final List pancakesOnSale = [
    // [pancakeName, pancakePrice, pancakeColor, imageName, pancakeStore]
    ["Blueberry Pancakes", "30", Colors.blue, "lib/images/pancakeflut.jpg", "IHOP"],
    ["Chocolate Pancakes", "35", Colors.brown, "lib/images/pancakeflut.jpg", "Denny's"],
    ["Strawberry Pancakes", "32", Colors.red, "lib/images/pancakeflut.jpg", "IHOP"],
    ["Banana Pancakes", "28", Colors.yellow, "lib/images/pancakeflut.jpg", "Denny's"],
    ["Plain Pancakes", "25", Colors.grey, "lib/images/pancakeflut.jpg", "IHOP"],
    ["Maple Pancakes", "40", Colors.orange, "lib/images/pancakeflut.jpg", "Denny's"],
    ["Cinnamon Pancakes", "33", Colors.deepOrange, "lib/images/pancakeflut.jpg", "IHOP"],
    ["Mixed Pancakes", "38", Colors.purple, "lib/images/pancakeflut.jpg", "Denny's"],
  ];

  PancakesTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: pancakesOnSale.length,
      padding: const EdgeInsets.all(8.0),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.5,
      ),
      itemBuilder: (context, index) {
        return DonutTile(
          donutFlavor: pancakesOnSale[index][0],
          donutPrice: pancakesOnSale[index][1],
          donutColor: pancakesOnSale[index][2],
          imageName: pancakesOnSale[index][3],
          donutStore: pancakesOnSale[index][4],
        );
      },
    );
  }
}
