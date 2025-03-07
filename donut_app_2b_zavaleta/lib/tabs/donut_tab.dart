import 'package:donut_app_2b_rodriguez/utils/donut_tile.dart';
import 'package:flutter/material.dart';

class DonutTab extends StatelessWidget {
  //Lista de donas
  final List donutsOnsale = [
    //[onutFlavor, donutPrice, donutColor, imageName, donut store]
    ["Ice Cream", "36", Colors.blue, "lib/images/icecream_donut.png", "Kripsy Kreme"],
    ["Strawberry", "45", Colors.red, "lib/images/Strawberry_donut.png", "Dunkin Donuts"],
    ["Grape Ape", "84", Colors.purple, "lib/images/grape_donut.png", "Kripsy Kreme"],
    ["Choco", "395", Colors.brown, "lib/images/chocolate_donut.png", "Dunkin Donuts" ]
  ];

   DonutTab({super.key});
   
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      //Elementos de nuestra lista
      itemCount: donutsOnsale.length,
      padding: EdgeInsets.all(8.0),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //Numero de columnas
        crossAxisCount: 2,
        //relacion de aspecto,
        childAspectRatio: 1 /1.5),
        itemBuilder: (context, index){
          return DonutTile(
            donutFlavor: donutsOnsale[index][0],
            donutPrice: donutsOnsale[index][1],
            donutColor: donutsOnsale[index][2],
            imageName: donutsOnsale[index][3],
            donutStore: donutsOnsale[index][4]
          );
        },
    );
  }
}