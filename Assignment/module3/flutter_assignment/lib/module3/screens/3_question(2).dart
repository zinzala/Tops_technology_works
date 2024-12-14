import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  List<int> numbers;
  SecondScreen({super.key, required this.numbers});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          widget.numbers.join(', '),
        ),
      ),
    );
  }
}
