import 'package:flutter/material.dart';

class IngredientsWidget extends StatelessWidget {
  const IngredientsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Ingredienta',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50)),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/cleaned_food_1.png',
                          height: 50,
                          width: 50,
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        const Text(
                          'Noodle',
                          style: TextStyle(
                              letterSpacing: 1, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50.0)),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/cleaned_food_2.png',
                          height: 50,
                          width: 50,
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        const Text(
                          'Shrimp',
                          style: TextStyle(
                              letterSpacing: 1, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50.0)),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/cleaned_food_3.png',
                          height: 50,
                          width: 50,
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        const Text(
                          'Egg',
                          style: TextStyle(
                              letterSpacing: 1, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/cleaned_food_2.png',
                          height: 50,
                          width: 50,
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        const Text(
                          'Scallion',
                          style: TextStyle(
                              letterSpacing: 1, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 25.0,
            ),
            const Text(
              'About',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              "A vibrant Thai sausage made with ground chicken,\nplus its spicy chile dip, from Chef Parnass Savang\nof Atlanta's Talat Market.",
              style: TextStyle(fontSize: 14.9),
            ),
          ],
        ),
      );

  }
}
