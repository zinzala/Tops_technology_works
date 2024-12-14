// Question-2:  Create an application to take input number from user and prints its reverse number in textfield

import 'package:flutter/material.dart';

void main() => runApp(ReverseNumber());

class ReverseNumber extends StatefulWidget {
  @override
  State<ReverseNumber> createState() => _ReverseNumberState();
}

class _ReverseNumberState extends State<ReverseNumber> {
  final _textController = TextEditingController();

  String reverseNumber(String number){
    return number.split('').reversed.join();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Reverse-Number',
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Question-2',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Padding(
          padding: EdgeInsets.all(21.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: _textController,
                decoration: InputDecoration(
                  labelText: 'Enter-number',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(),
                  backgroundColor: Colors.blue.shade100
                ),
                onPressed: () {
                  setState(() {
                    String reverseNum = reverseNumber(_textController.text);
                    _textController.text = reverseNum;
                  });
                },
                child: Text('OK'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
