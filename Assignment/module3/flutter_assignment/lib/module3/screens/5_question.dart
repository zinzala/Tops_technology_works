// Question-5: create an application to change background when button is clicked
import 'package:flutter/material.dart';
import 'dart:math';
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color? colour;
  //int currentIndex = 0;
  final Random random = Random();
  List<Color> colourList = [
    Colors.brown,
    Colors.purple,
    Colors.black,
    Colors.cyan,
    Colors.lightGreen,
    Colors.yellow,
  ];

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Question-5',
      home: Scaffold(
        backgroundColor: colour,
        body: Center(
          child: FilledButton(
            style: ButtonStyle(
              padding: WidgetStatePropertyAll(
                EdgeInsets.all(25.0),
              ),
              backgroundColor: WidgetStatePropertyAll(Colors.orange)
            ),
            onPressed: () {
              setState(() {
                //colour = colourList[currentIndex];
                //currentIndex = (currentIndex + 1) % colourList.length;

                int randomIndex = random.nextInt(colourList.length);
                colour = colourList[randomIndex];
              });
            },
            child: Text('Change-Color'),
          ),
        ),
      ),
    );
  }
}
