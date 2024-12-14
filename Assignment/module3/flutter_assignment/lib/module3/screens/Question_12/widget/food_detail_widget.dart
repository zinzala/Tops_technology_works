import 'package:flutter/material.dart';

class FoodDetailWidget extends StatefulWidget {
  const FoodDetailWidget({super.key});

  @override
  State<FoodDetailWidget> createState() => _FoodDetailWidgetState();
}

class _FoodDetailWidgetState extends State<FoodDetailWidget> {
  int number = 0;
  int price = 0;
  void increment() {
    setState(() {
      price += 12;
      number++;
    });
  }

  void decrement() {
    setState(() {
      if (number > 0) {
        price -= 12;
        number--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Sei Ua Samun Phrai',
          style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 10.0,
        ),
        const Row(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Wrap(
              children: [
                Icon(
                  Icons.watch_later_outlined,
                  color: Colors.blue,
                ),
                Padding(
                  padding: EdgeInsets.all(1.0),
                  child: Text(
                    '50min',
                    style: TextStyle(fontSize: 15.0),
                  ),
                ),
              ],
            ),
            SizedBox(width: 40,),
            Wrap(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Padding(
                  padding: EdgeInsets.all(1.0),
                  child: Text(
                    '4.8',
                    style: TextStyle(fontSize: 15.0),
                  ),
                ),
              ],
            ),
            SizedBox(width: 40,),
            Wrap(
              children: [
                Icon(
                  Icons.local_fire_department_rounded,
                  color: Colors.red,
                ),
                Padding(
                  padding: EdgeInsets.all(1),
                  child: Text(
                    '325 Kcal',
                    style: TextStyle(fontSize: 15.0),
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 30.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.black12),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 5.0),
                    child: Row(
                      children: [
                        const Text(
                          r'$',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 11.5),
                        ),
                        Text(
                          '$price',
                          style: const TextStyle(
                              fontSize: 20.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(25)),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: decrement,
                          icon: const Icon(
                            Icons.remove,
                            size: 14,
                            color: Colors.black,
                          ),
                        ),
                        CircleAvatar(
                          radius: 14,
                          child: Text('$number'),
                        ),
                        IconButton(
                          onPressed: increment,
                          icon: const Icon(
                            Icons.add,
                            size: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}
