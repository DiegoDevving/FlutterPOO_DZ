import 'package:donut_app_2b_rodriguez/utils/donut_tile.dart';
import 'package:flutter/material.dart';

class DonutTab extends StatelessWidget {
  // Lista de donas
  final List donutsOnsale = [
    // [donutFlavor, donutPrice, donutColor, imageName, donutStore]
    ["Ice Cream", "36", Colors.blue, "lib/images/icecream_donut.png", "Kripsy Kreme"],
    ["Strawberry", "45", Colors.red, "lib/images/Strawberry_donut.png", "Dunkin Donuts"],
    ["Grape Ape", "84", Colors.purple, "lib/images/grape_donut.png", "Kripsy Kreme"],
    ["Choco", "395", Colors.brown, "lib/images/chocolate_donut.png", "Dunkin Donuts"],
    // Four additional donut tiles:
    ["Vanilla", "50", Colors.yellow, "lib/images/vanilla_donut.png", "Dunkin Donuts"],
    ["Matcha", "60", Colors.green, "lib/images/matcha_donut.png", "Kripsy Kreme"],
    ["Blueberry", "55", Colors.indigo, "lib/images/blueberry_donut.png", "Dunkin Donuts"],
    ["Caramel", "70", Colors.orange, "lib/images/caramel_donut.png", "Kripsy Kreme"],
  ];

  DonutTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      // Elementos de nuestra lista
      itemCount: donutsOnsale.length,
      padding: const EdgeInsets.all(8.0),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        // Número de columnas
        crossAxisCount: 2,
        // Relación de aspecto
        childAspectRatio: 1 / 1.5,
      ),
      itemBuilder: (context, index) {
        return DonutTile(
          donutFlavor: donutsOnsale[index][0],
          donutPrice: donutsOnsale[index][1],
          donutColor: donutsOnsale[index][2],
          imageName: donutsOnsale[index][3],
          donutStore: donutsOnsale[index][4],
        );
      },
    );
  }
}
