import 'package:flutter/material.dart';

class CategoryButtons extends StatefulWidget {
  const CategoryButtons({super.key});

  @override
  State<CategoryButtons> createState() => _CategoryButtonsState();
}

class _CategoryButtonsState extends State<CategoryButtons> {
  final List<String> categories = ['Recommend', 'Popular', 'Noodles', 'Pizza'];
  String selectedCategory = 'Recommend';
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: categories.map(
                (e) {
              return Padding(
                padding: EdgeInsets.only(right: 6.0),
                child: FilledButton(
                  style: FilledButton.styleFrom(
                    backgroundColor: (selectedCategory == e) ? Colors.orange : Colors.white,
                    foregroundColor: (selectedCategory == e) ? Colors.white : Colors.black,
                  ),
                  onPressed: () {
                    setState(() {
                      selectedCategory = e;
                    });
                  },
                  child: Text('$e'),
                ),
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
