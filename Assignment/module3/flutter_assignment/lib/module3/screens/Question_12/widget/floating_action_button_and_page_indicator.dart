import 'package:flutter/material.dart';
import 'package:flutter_assignment/module3/screens/Question_12/screens/restaurant_screen_2.dart';

class BottomRow extends StatelessWidget {
  BottomRow({super.key});

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.all(33.0),
          child: Row(
            children: List.generate(
              4,
                  (index) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 4.0),
                  decoration: BoxDecoration(
                      color: (currentPage == index)
                          ? Colors.orange
                          : Colors.grey,
                      shape: BoxShape.circle),
                  height: (currentPage == index) ? 12.0 : 8.0,
                  width: (currentPage == index) ? 12.0 : 8.0,
                );
              },
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 12,bottom: 20),
          child: SizedBox(
            height: 65,
            width: 65,
            child: FloatingActionButton(
              child: Icon(Icons.shopping_bag_outlined,size: 30,),
              backgroundColor: Colors.orange,
              shape: CircleBorder(),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => RestaurantScreen2(),));
              },
            ),
          ),
        ),
      ],
    );
  }
}
