// Question-3: Create an application to take two numbers from user and display all numbers between those 2 numbers in next activity.
import 'package:flutter/material.dart';
import 'package:flutter_assignment/module3/screens/3_question(2).dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final num1Controller = TextEditingController();

  final num2Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Question-3',
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Question-3',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Builder(
          builder: (context) => Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: TextField(
                          controller: num1Controller,
                          decoration: const InputDecoration(
                            labelText: 'Enter',
                            hintText: 'First-Number',
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20.0,
                      ),
                      Expanded(
                        child: TextField(
                          controller: num2Controller,
                          decoration: const InputDecoration(
                            labelText: 'Enter',
                            hintText: 'Second-Number',
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(),
                        backgroundColor: Colors.blue.shade100),
                    onPressed: () {
                      String num1 = num1Controller.text.trim();
                      String num2 = num2Controller.text.trim();
                      var numbers = processNumbers(num1, num2);

                      //navigation
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SecondScreen(numbers: numbers),
                        ),
                      );
                    },
                    child: Text('OK'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

List<int> processNumbers(String num1, String num2) {
  List<int> numbersWeWant = [];
  if (num1 is String && num2 is String) {
    int number1 = int.parse(num1);
    int number2 = int.parse(num2);
    while (number1 < number2 - 1) {
      number1++;
      numbersWeWant.add(number1);
    }
  }
  return numbersWeWant;
}
