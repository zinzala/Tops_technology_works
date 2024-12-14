import 'package:flutter/material.dart';
import 'package:flutter_assignment/module3/screens/Question_12/widget/category_buttons.dart';
import 'package:flutter_assignment/module3/screens/Question_12/widget/floating_action_button_and_page_indicator.dart';
import 'package:flutter_assignment/module3/screens/Question_12/widget/food_list.dart';

class RestaurantScreen extends StatefulWidget {
  const RestaurantScreen({super.key});

  @override
  State<RestaurantScreen> createState() => _RestaurantScreenState();
}

class _RestaurantScreenState extends State<RestaurantScreen> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          // take column for top buttons and text and image and for ratings stuff
          Container(
            margin: EdgeInsets.only(right: 20.0, left: 20.0),
            child: Column(
              children: [
                // this row holds top buttons
                Row(
                  children: [
                    IconButton(
                      style: IconButton.styleFrom(
                          backgroundColor: Colors.white,
                          padding: EdgeInsets.all(15.0)),
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_back),
                    ),
                    const Expanded(child: SizedBox()),
                    IconButton(
                      style: IconButton.styleFrom(
                          backgroundColor: Colors.white,
                          padding: EdgeInsets.all(15.0)),
                      onPressed: () {},
                      icon: const Icon(Icons.search),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30.0,
                ),
                // this row holds texts and image
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Restaurant',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                        const SizedBox(
                          height: 8.0,
                        ),
                        Row(
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                color: Colors.black12,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(4.0),
                                ),
                              ),
                              child: const Text(
                                '20-30min',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            const Text(
                              '2.4km  Restaurant',
                              style: TextStyle(color: Colors.black54),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        const Text(
                          'Orange Sandwiches is delicious',
                          style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    Expanded(child: SizedBox()),
                    Column(
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          child: ClipRRect(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                            ),
                            child: Image.asset(
                              'assets/images/restaurant_logo.jpg',
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        const Row(
                          children: [
                            Icon(
                              Icons.star_border,
                              color: Colors.orange,
                            ),
                            Text('4.7'),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          CategoryButtons(),
          Expanded(child: FoodList()),
          BottomRow(),
        ]),
      ),
    );
  }
}
