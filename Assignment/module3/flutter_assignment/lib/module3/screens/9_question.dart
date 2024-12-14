// Question-9: Write a program in android display screen colour which the colour will be select from the radio button
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color? _defaultColor;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'colour-change-using-radio-button',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: _defaultColor,
        appBar: AppBar(
          title: Text(
            'colour-change-using-radio-button',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Container(
            height: 200,
            width: 200,

            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      SizedBox(width: 50,),
                      Radio(value: Colors.red, groupValue: _defaultColor, onChanged: (value) {
                        setState(() {
                          _defaultColor = value;
                        });
                      },),
                      SizedBox(width: 10,),
                      Text('red',style: TextStyle(fontSize: 19.0),),
          
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(width: 50,),
                      Radio(value: Colors.green, groupValue: _defaultColor, onChanged: (value) {
                        setState(() {
                          _defaultColor = value;
                        });
                      },),
                      SizedBox(width: 10,),
                      Text('green',style: TextStyle(fontSize: 19.0),),
          
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(width: 50,),
                      Radio(value: Colors.blue, groupValue: _defaultColor, onChanged: (value) {
                        setState(() {
                          _defaultColor = value;
                        });
                      },),
                      SizedBox(width: 10,),
                      Text('blue',style: TextStyle(fontSize: 19.0),),
          
                    ],
                  ),
                ],
              ),
            ),
          ),
        )
      ),
    );
  }
}
