// Question1: create below screen
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    //first child
                    Container(
                      width: 400,
                      height: 250,
                      child: Image(
                        image: AssetImage(
                          'assets/images/winter_jacket.jpg',
                        ),
                        fit: BoxFit.contain,
                      ),
                    ),
                    //second child
                    Positioned(
                      top: 16.0,
                      left: 15.0,
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.keyboard_arrow_left_rounded),
                        color: Colors.black,
                        style: IconButton.styleFrom(
                          backgroundColor: Colors.white,
                          side: BorderSide(color: Colors.indigoAccent.shade700),
                          padding: EdgeInsets.all(13.0),
                        ),
                      ),
                    ),
                    //third child
                    Positioned(
                      right: 15.0,
                      top: 16.0,
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.heart_broken_sharp,
                          color: Colors.black,
                        ),
                        style: IconButton.styleFrom(
                          backgroundColor: Colors.white,
                          side: BorderSide(
                            color: Colors.indigoAccent.shade700,
                          ),
                          padding: EdgeInsets.all(13.0),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(30, 45, 30, 0.0),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Men's Winter Jacket",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        r'$148',
                        style: TextStyle(
                            color: Colors.amber,
                            fontSize: 21.0,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "Stay warm and stylish this winter with our premium Men's Winter Jacket.",
                        style: TextStyle(
                          color: Colors.black,
                          //fontWeight: FontWeight.bold,
                          fontSize: 17.0,
                        ),
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      Text(
                        'Reviews',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      _getRow('assets/images/men.jpeg','Alex Morgan'),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text('I absolutely love this jacket! It kept me warm during a recent trip to the mountains, and the windproof feature really works.',style: TextStyle(color: Colors.black87),),
                      SizedBox(
                        height: 20.0,
                      ),
                      _getRow('assets/images/girl.jpg', 'Mike Doe'),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text("This is a great winter jacket. It's very stylish and does a fantastic job of keeping the cold out.",style: TextStyle(color: Colors.black87),),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget _getRow(String path, String text) {
  return Row(
    children: [
      CircleAvatar(
        backgroundImage: AssetImage(path),
        radius: 35.0,
      ),
      SizedBox(
        width: 13.0,
      ),
      Text(
        text,
        style: TextStyle(
            color: Colors.black,
            fontSize: 20.0,
            fontWeight: FontWeight.w500
        ),
      ),
    ],
  );
}
