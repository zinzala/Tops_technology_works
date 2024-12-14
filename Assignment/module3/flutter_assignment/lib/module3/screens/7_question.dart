// Question-7:  create an application to display Textview when checkbox is checked and hide otherwise

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
  bool? checkbox1 = false;
  bool? checkbox2 = false;
  bool? checkbox3 = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'CHECKBOX',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
          ),
          centerTitle: true,
          backgroundColor: Colors.cyan,
        ),
        body: Column(
          children: [
            Visibility(
              visible: (checkbox1 == false) ? false : true,
              child: Text('IP Address : 192.168.100.90'),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Visibility(
              visible: (checkbox2 == false) ? false : true,
              child: Text('MAC Address : AABB:0068:C985'),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Visibility(
              visible: (checkbox3 == false) ? false : true,
              child: Text('HOME Address : a/144 punagam,surat,india'),
            ),
            const SizedBox(
              height: 50.0,
            ),
            _getRow(
                value: checkbox1,
                onChanged: (value) {
                  setState(() {
                    checkbox1 = value;
                  });
                },
                text: 'IPv4 address',
                color: Colors.red),
            _getRow(
                value: checkbox2,
                onChanged: (value) {
                  setState(() {
                    checkbox2 = value;
                  });
                },
                text: 'MAC address',
                color: Colors.indigo),
            _getRow(
                value: checkbox3,
                onChanged: (value) {
                  setState(() {
                    checkbox3 = value;
                  });
                },
                text: 'Home address'),
          ],
        ),
      ),
    );
  }
}

Widget _getRow(
    {required bool? value,
      required Null Function(dynamic value) onChanged,
      required String text,
      MaterialColor color = Colors.green}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Checkbox(
        activeColor: color,
        value: value,
        onChanged: onChanged,
      ),
      Text(
        text,
        style: TextStyle(fontSize: 17.0),
      ),
    ],
  );
}
