import 'package:flutter/material.dart';

class FoodList extends StatefulWidget {
  const FoodList({super.key});

  @override
  State<FoodList> createState() => _FoodListState();
}

class _FoodListState extends State<FoodList> {
  final List<Map<String, String>> foodItems = [
    {"name": "Soba Soup", "description": "No.1 in sales", "price": r"$12"},
    {
      "name": "Sei Ua Samun Phrai",
      "description": "No.1 in sales",
      "price": r"$12"
    },
    {
      "name": "Ratatouille Pasta",
      "description": "No.1 in sales",
      "price": r"$12"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(16),
      itemCount: foodItems.length,
      itemBuilder: (context, index) {
        final item = foodItems[index];
        return Card(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(11.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 75,
                  width: 75,
                  child: Image.asset('assets/images/cleaned_food_${index+1}.png'),
                ),
                const SizedBox(
                  width: 15.0,
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('${foodItems[index]['name']}',style: TextStyle(fontWeight: FontWeight.bold),),
                      Text('${foodItems[index]['description']}'),
                      Text('${foodItems[index]['price']}',style: TextStyle(fontWeight: FontWeight.bold),),
                    ],
                  ),
                ),
                Icon(Icons.keyboard_arrow_right),
              ],
            ),
          ),
        );
      },
    );
  }
}
