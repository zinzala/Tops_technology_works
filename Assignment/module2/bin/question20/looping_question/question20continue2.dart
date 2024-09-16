/*
  7. Write a program to print the number in reverse order.
  8. Write a program to find out the max from given number (E.g. No:- 1562 Max number is 6
  9. Write a program make a summation of given number (E.g. 1523 ans :- 11)
  10. Write a program you have to make a summation of first and last Digit. (E.g. 1234 ans:-5)

 */

import 'dart:io';

void main() {
  // 7
  String number = '12345';
  stdout.write('$number in reverse order is as follows:');
  for (int i = number.length; i > 0; i--) {
    stdout.write('$i ');
  }
  print('');

  // 8
  String strNumber = '1962';
  List<String> number3 = strNumber.split('');
  int max = int.parse(number3[0]);
  for(int i = 0; i < number3.length; i++){
    if(int.parse(number3[i]) > max){
       max = int.parse(number3[i]);
     }
  }
  stdout.write('max number in $strNumber is $max');
  print('');

  // 9
  int summationNumber = 1532;
  int reminder = 0;
  while(summationNumber != 0){
    reminder += summationNumber%10;
    summationNumber ~/= 10;
  }
  print(reminder);

  //10
  int summationFirstLast = 12345;
  List<int> intList = [];
  while(summationFirstLast != 0){
    int reminder = summationFirstLast % 10;
    intList.add(reminder);
    summationFirstLast ~/= 10;
  }
  print(intList[0]+intList[intList.length-1]);
}
