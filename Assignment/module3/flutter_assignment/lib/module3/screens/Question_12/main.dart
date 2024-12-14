import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_assignment/module3/screens/Question_12/screens/restaurant_screen.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,overlays: []);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
       // home: IngredientsWidget(),
      home: RestaurantScreen(),
    );
  }
}


