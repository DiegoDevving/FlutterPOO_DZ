import 'package:donut_app_2b_rodriguez/tabs/burger_tab.dart';
import 'package:donut_app_2b_rodriguez/tabs/donut_tab.dart';
import 'package:donut_app_2b_rodriguez/tabs/pancakes_tab.dart';
import 'package:donut_app_2b_rodriguez/tabs/pizza_tab.dart';
import 'package:donut_app_2b_rodriguez/tabs/smoothie_tab.dart';
import 'package:donut_app_2b_rodriguez/utils/my_tab.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Lista de tabs
  List<Widget> myTabs = [
    MyTab(iconPath: 'lib/icons/donut.png'),
    MyTab(iconPath: 'lib/icons/burger.png'),
    MyTab(iconPath: 'lib/icons/smoothie.png'),
    MyTab(iconPath: 'lib/icons/pancakes.png'),
    MyTab(iconPath: 'lib/icons/pizza.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: Icon(Icons.menu, color: Colors.grey[800]),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 24.0),
              child: Icon(Icons.person),
            )
          ],
        ),
        body: Column(
          children: [
            // Texto principal
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 18),
              child: Row(
                children: const [
                  Text('I want to ', style: TextStyle(fontSize: 32)),
                  Text(
                    'Eat',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ),
            // TabBar
            TabBar(tabs: myTabs),
            // TabBarView with content for each tab
            Expanded(
              child: TabBarView(
                children: [
                  DonutTab(),
                  BurgerTab(),
                  SmoothieTab(),
                  PancakesTab(),
                  PizzaTab(),
                ],
              ),
            ),
            // Carrito (Shopping cart section)
            Container(
              color: Colors.white,
              padding: const EdgeInsets.all(16),
              child: Row(
                //Poner los elementos en los extremos de la fila
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 28),
                    child: Column(
                      // Alinearlo a la izquierda
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          '2 Items  | \$45',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold, // Negritas
                          ),
                        ),
                        Text(
                          "Delivery Charges Included",
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.pink,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 12, 
                      ),
                    ),
                    child: const Text(
                      'View Cart',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
