// Question-8: Write a program to show four images around Textview
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'four image around textview',
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              'Question-8',
              style: TextStyle(color: Colors.white),
            ),
            centerTitle: true,
            backgroundColor: Colors.blue,
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 150,
                  width: 150,
                  child: Image.asset('assets/images/CartoonBoy.jpg'),
                ),
                Row(
                  children: [
                    Container(
                      height: 160,
                      width: 150,
                      child: Image.asset('assets/images/SpongeBobSquarePant.jpg'),
                    ),
                    Text(
                      'Cartoons',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                    ),
                    Container(
                      height: 150,
                      width: 150,
                      child: Image.asset(
                          'assets/images/SpongeBobSquarePantFriend.png'),
                    ),
                  ],
                ),
                Container(
                  height: 150,
                  width: 220,
                  child: Image.asset('assets/images/rabitCartoon.jpg'),
                ),
              ],
            ),
          )),
    );
  }
}
