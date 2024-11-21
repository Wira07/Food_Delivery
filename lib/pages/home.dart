import 'package:flutter/material.dart';

import '../widget/widget_support.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool icecream = false, pizza = false, salad = false, burger = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 50.0, left: 20.0, right: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Hello, Wira Sukma Saputra",
                  style: AppWidget.boldTextFeildStyle(),
                ),
                Container(
                  padding: const EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30.0,
            ),
            Text("Arunika Food", style: AppWidget.HeadLineTextFeildStyle()),
            Text(
              "Discover and Get Great Food",
              style: AppWidget.LightTextFeildStyle(),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    icecream = true;
                    pizza = false;
                    salad = false;
                    burger = false;
                    setState(() {});
                  },
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(8),
                    child: Container(
                      decoration: BoxDecoration(
                        color: icecream ? Colors.black : Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: const EdgeInsets.all(10),
                      child: Image.asset(
                        "images/ice-cream.png",
                        height: 40,
                        width: 40,
                        fit: BoxFit.cover,
                        color: icecream ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    icecream = false;
                    pizza = true;
                    salad = false;
                    burger = false;
                    setState(() {});
                  },
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(8),
                    child: Container(
                      decoration: BoxDecoration(
                        color: pizza ? Colors.black : Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: const EdgeInsets.all(10),
                      child: Image.asset(
                        "images/pizza.png",
                        height: 40,
                        width: 40,
                        fit: BoxFit.cover,
                        color: pizza ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    icecream = false;
                    pizza = false;
                    salad = true;
                    burger = false;
                    setState(() {});
                  },
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(8),
                    child: Container(
                      decoration: BoxDecoration(
                        color: salad ? Colors.black : Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: const EdgeInsets.all(10),
                      child: Image.asset(
                        "images/salad.png",
                        height: 40,
                        width: 40,
                        fit: BoxFit.cover,
                        color: salad ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    icecream = false;
                    pizza = false;
                    salad = false;
                    burger = true;
                    setState(() {});
                  },
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(8),
                    child: Container(
                      decoration: BoxDecoration(
                        color: burger ? Colors.black : Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: const EdgeInsets.all(10),
                      child: Image.asset(
                        "images/burger.png",
                        height: 40,
                        width: 40,
                        fit: BoxFit.cover,
                        color: burger ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
