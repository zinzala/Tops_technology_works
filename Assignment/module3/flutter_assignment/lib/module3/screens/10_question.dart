// Question-10: Write a program you have taken three seek bar controls. From three Seekbar which Seekbar value changed the background color of device will be changed.
import 'package:flutter/material.dart';

void main() => runApp(SliderApp());

class SliderApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'seek-bar',
      home: ColourChangeScreen(),
    );
  }
}

class ColourChangeScreen extends StatefulWidget {
  const ColourChangeScreen({super.key});

  @override
  State<ColourChangeScreen> createState() => _ColourChangeScreenState();
}

class _ColourChangeScreenState extends State<ColourChangeScreen> {
  double red = 255;
  double green = 255;
  double blue = 255;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider-Widget'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color:
              Color.fromARGB(255, red.toInt(), green.toInt(), blue.toInt()),
              child: Center(
                child: Text(
                  'RGB: ${red.toInt()},${green.toInt()},${blue.toInt()}',
                  style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 16.0,
          ),
          Slider(
            max: 255,
            min: 0,
            label: red.round().toString(),
            divisions: 255,
            activeColor: Colors.red,
            value: red,
            onChanged: (value) {
              setState(() {
                red = value;
              });
            },
          ),
          const SizedBox(
            height: 20.0,
          ),
          Slider(
            max: 255,
            min: 0,
            label: green.round().toString(),
            divisions: 255,
            activeColor: Colors.green,
            value: green,
            onChanged: (value) {
              setState(() {
                green = value;
              });
            },
          ),
          const SizedBox(
            height: 20.0,
          ),
          Slider(
            max: 255,
            min: 0,
            label: blue.round().toString(),
            divisions: 255,
            activeColor: Colors.blue,
            value: blue,
            onChanged: (value) {
              setState(() {
                blue = value;
              });
            },
          ),
        ],
      ),
    );
  }
}
