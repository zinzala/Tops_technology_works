// Question-6:  create an application to increate font size when plus button click and decrease when minus button click
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _textStyleAppBar = TextStyle(
    color: Colors.white,
    fontSize: 20.0,
  );
  final _textStyle = TextStyle(
    color: Colors.black,
    fontSize: 45.0,
  );
  final _buttonStyle = ButtonStyle(
    side: WidgetStatePropertyAll(
      BorderSide(color: Colors.black,width: 1.5),
    ),
  );

  double _fontSize = 24;

  void increaseFontSize(){
    setState(() {
      _fontSize = _fontSize + 3;
    });
  }
  void decreaseFontSize(){
    setState(() {
      _fontSize = _fontSize - 3;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'STATEFUL WIDGET',
            style: _textStyleAppBar,
          ),
          centerTitle: true,
          backgroundColor: Colors.indigo,
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              OutlinedButton(
                onPressed: () {
                  decreaseFontSize();
                },
                child: Text(
                  '-',
                  style: _textStyle,
                ),
                style: _buttonStyle,
              ),
              Text(
                'G24',
                style: TextStyle(
                  fontSize: _fontSize,
                ),
              ),
              OutlinedButton(
                onPressed: () {
                  increaseFontSize();
                },
                child: Text(
                  '+',
                  style: _textStyle,
                ),
                style: _buttonStyle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
