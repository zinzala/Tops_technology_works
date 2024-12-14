import 'package:flutter/material.dart';
import 'package:flutter_assignment/module3/screens/Question_12/widget/food_detail_widget.dart';
import 'package:flutter_assignment/module3/screens/Question_12/widget/ingredients_widget.dart';

class RestaurantScreen2 extends StatelessWidget {
  const RestaurantScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return SecondRestaurantScreen();
  }
}

class SecondRestaurantScreen extends StatefulWidget {
  const SecondRestaurantScreen({super.key});

  @override
  State<SecondRestaurantScreen> createState() => _SecondRestaurantScreenState();
}

class _SecondRestaurantScreenState extends State<SecondRestaurantScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 300,
              color: Colors.orange,
              child: SafeArea(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: IconButton(
                        style: IconButton.styleFrom(
                          backgroundColor: Colors.white,
                        ),
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 15),
                      child: IconButton(
                        style: IconButton.styleFrom(
                          backgroundColor: Colors.white,
                        ),
                        onPressed: () {},
                        icon: Icon(
                          Icons.favorite_border,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              height: 630,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50.0),
                  topRight: Radius.circular(50.0),
                ),
                color: Colors.white,
              ),
              child: Stack(
                alignment: Alignment.center,
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    top: -170,
                    child: SizedBox(
                      height: 350,
                      width: 350,
                      child: Image.asset('assets/images/food_2.png'),
                    ),
                  ),
                  ///////////
                  Positioned(
                    top: 130,
                    child: Column(
                      children: [
                        FoodDetailWidget(),
                        IngredientsWidget(),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: EdgeInsets.only(right: 18.0,bottom: 30.0),
              child: Container(
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(35.0)
                ),
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.shopping_bag_outlined,size: 30,),
                    SizedBox(
                      width: 8.0,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Text('1'),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
