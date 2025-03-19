import 'package:donut_app_2b_rodriguez/utils/donut_tile.dart';
import 'package:flutter/material.dart';

class PizzaTab extends StatelessWidget {
  // List of pizzas
  final List pizzasOnSale = [
    // [pizzaName, pizzaPrice, pizzaColor, imageName, pizzaStore]
    ["Margherita", "40", Colors.red, "lib/images/pizzaflut.jpg", "Domino's"],
    ["Pepperoni", "45", Colors.deepOrange, "lib/images/pizzaflut.jpg", "Pizza Hut"],
    ["BBQ Chicken", "50", Colors.brown, "lib/images/pizzaflut.jpg", "Papa John's"],
    ["Veggie", "38", Colors.green, "lib/images/pizzaflut.jpg", "Domino's"],
    ["Hawaiian", "42", Colors.yellow, "lib/images/pizzaflut.jpg", "Pizza Hut"],
    ["Four Cheese", "55", Colors.orange, "lib/images/pizzaflut.jpg", "Papa John's"],
    ["Meat Lovers", "60", Colors.redAccent, "lib/images/pizzaflut.jpg", "Domino's"],
    ["Supreme", "65", Colors.purple, "lib/images/pizzaflut.jpg", "Pizza Hut"],
  ];

  PizzaTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: pizzasOnSale.length,
      padding: const EdgeInsets.all(8.0),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.5,
      ),
      itemBuilder: (context, index) {
        return DonutTile(
          donutFlavor: pizzasOnSale[index][0],
          donutPrice: pizzasOnSale[index][1],
          donutColor: pizzasOnSale[index][2],
          imageName: pizzasOnSale[index][3],
          donutStore: pizzasOnSale[index][4],
        );
      },
    );
  }
}
