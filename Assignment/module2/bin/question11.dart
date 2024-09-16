/*
    11. Write a Program to check the given year is leap year or not.
 */

import 'dart:io';

void main(){
  stdout.write('Enter year to check leap year or not : ');
  int year = int.parse(stdin.readLineSync().toString());

  if(year % 4 == 0){
    if(year % 100 == 0){
      if(year % 400 == 0){
        print('$year is leap year');
      }else{
        print('$year is not a leap year');
      }
    }else{
      print('$year is leap year');
    }
  }else{
    print('$year is not a leap year');
  }
}
