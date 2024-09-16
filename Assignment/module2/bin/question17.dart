/*
17. Write Program use switch statement. Display Monday to Sunday
*/

import 'dart:io';

void main(){
  print('Enter a day number(1-7)');
  int dayNumber = int.parse(stdin.readLineSync().toString());

  switch(dayNumber){
    case 1:
      print('Sunday');
      break;
    case 2:
      print('Monday');
      break;
    case 3:
      print('Tuesday');
      break;
    case 4:
      print('Wednesday');
      break;
    case 5:
      print('Thursday');
      break;
    case 6:
      print('Friday');
      break;
    case 7:
      print('Saturday');
      break;
    default:
      print('ERROR - You entered an invalid day number');
  }
}