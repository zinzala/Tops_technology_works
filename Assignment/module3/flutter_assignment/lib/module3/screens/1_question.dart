// Question-1: create below screens
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          margin: EdgeInsets.only(top: 35.0,),
          child: SingleChildScrollView(
            child: Column(
              children: [
                _getContainer(232, 400, Colors.red),
                SizedBox(
                  height: 8.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _getContainer(175, 192, Colors.blueAccent),
                    _getContainer(175, 192, Colors.blueAccent),

                  ],),
                SizedBox(
                  height: 8.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _getContainer(175, 192, Colors.blueAccent),
                    _getContainer(175, 192, Colors.blueAccent),

                  ],),
                SizedBox(
                  height: 8.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _getContainer(120, 125, Colors.yellow),
                    _getContainer(120, 125, Colors.yellow),
                    _getContainer(120, 125, Colors.yellow),
                  ],),
                SizedBox(
                  height: 8.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _getContainer(120, 125, Colors.yellow),
                    _getContainer(120, 125, Colors.yellow),
                    _getContainer(120, 125, Colors.yellow),
                  ],),
              ],),
          ),
        ),
      ),
    );
  }
}

Widget _getContainer(double height, double width,Color color){
  return Container(
    height: height,
    width: width,
    color: color,
  );
}