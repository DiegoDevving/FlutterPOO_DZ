import 'package:flutter/material.dart';

class DonutTile extends StatelessWidget {
  final String donutFlavor;
  final String donutPrice;
  final dynamic donutColor;
  final String imageName;
  final String donutStore;

  const DonutTile({
    super.key,
    required this.donutFlavor,
    required this.donutPrice,
    this.donutColor,
    required this.imageName,
    required this.donutStore,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          color: donutColor[100],
          borderRadius: BorderRadius.circular(24),
        ),
        child: Column(
          children: <Widget>[
            // PriceTag
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: donutColor[200],
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(24),
                      bottomLeft: Radius.circular(24),
                      topLeft: Radius.circular(0),
                      bottomRight: Radius.circular(0),
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(
                    vertical: 8,
                    horizontal: 18,
                  ),
                  child: Text(
                    '\$ $donutPrice',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: donutColor[800],
                    ),
                  ),
                ),
              ],
            ),

            // Donut Picture
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 12,
                horizontal: 34,
              ),
              child: Image.asset(imageName),
            ),
            // Donut text
            Text(donutFlavor,
             style: 
                const TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                //Para tener un epsacio entre texto
            const SizedBox(
              height:  4,
            ),
            // Todo: Agregar texto de la tienda
            Text(donutStore,
             style: 
                const TextStyle(color:Colors.grey ,fontSize: 16)
                ),
                Padding(
                  padding: const EdgeInsets.all(12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon (
                      Icons.favorite_border,
                      color: Colors.pink[400],
                    ),
                    const Text(
                      "Add",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline),
                    )
                  ]
                ))
                //Para tener un epsacio entre texto
          

            // Love icon + add button

        ],
        ),
      ),
    );
  }
}