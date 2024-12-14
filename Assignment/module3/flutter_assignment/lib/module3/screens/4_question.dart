// Question-4: Create an application with radio buttons (Add, Substraction,
// Multiply, Division) EditText (number1, number2) and print result as
// per user choice from radio button in TextView

import 'package:flutter/material.dart';
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final num1Controller = TextEditingController();
  final num2Controller = TextEditingController();

  String? _color;
  int result = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Question-4',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Question-4'),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(padding: EdgeInsets.all(25.0), child: Text('$result')),
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: EdgeInsets.all(25.0),
                child: Row(
                  children: [
                    Expanded(
                        child: TextField(
                      controller: num1Controller,
                      decoration: const InputDecoration(
                          labelText: 'Number1', border: OutlineInputBorder()),
                    )),
                    const SizedBox(
                      width: 20.0,
                    ),
                    Expanded(
                        child: TextField(
                      controller: num2Controller,
                      decoration: const InputDecoration(
                          labelText: 'Number1', border: OutlineInputBorder()),
                    )),
                  ],
                ),
              ),
              RadioListTile(value: 'Addition', groupValue: _color, onChanged: (value) {
                setState(() {
                  int? num1 = int.tryParse(num1Controller.text);
                  int? num2 = int.tryParse(num2Controller.text);

                  if(num1 != null && num2 != null){
                    result = num1 + num2;
                  }
                  _color = value;
                });
              },
              title: Text('Addition'),
              ),
              RadioListTile(value: 'Subtraction', groupValue: _color, onChanged: (value) {
                setState(() {
                  int? num1 = int.tryParse(num1Controller.text);
                  int? num2 = int.tryParse(num2Controller.text);

                  if(num1 != null && num2 != null){
                    result = num1 - num2;
                  }
                  _color = value;
                });
              },
                title: Text('Subtraction'),
              ),
              RadioListTile(value: 'Multiplication', groupValue: _color, onChanged: (value) {
                setState(() {
                  int? num1 = int.tryParse(num1Controller.text);
                  int? num2 = int.tryParse(num2Controller.text);

                  if(num1 != null && num2 != null){
                    result = num1 * num2;
                  }
                  _color = value;
                });
              },
                title: Text('Multiplication'),
              ),
              RadioListTile(value: 'Division', groupValue: _color, onChanged: (value) {
                setState(() {
                  int? num1 = int.tryParse(num1Controller.text);
                  int? num2 = int.tryParse(num2Controller.text);

                  if(num1 != null && num2 != null){
                    result = num1 ~/ num2;
                  }
                  _color = value;
                });
              },
                title: Text('Division'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
