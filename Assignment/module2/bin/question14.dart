/*
 14. Write a program to find the Max number from the given three
 number using Ternary Operator
*/

import 'dart:io';

void main(){

  stdout.write('Enter 1st number : ');
  int num1 = int.parse(stdin.readLineSync().toString());

  stdout.write('Enter 2nd number : ');
  int num2 = int.parse(stdin.readLineSync().toString());

  stdout.write('Enter 3rd number : ');
  int num3 = int.parse(stdin.readLineSync().toString());

  int? max;

  (num1 >= num2) ? (num1 >= num3) ? max = num1 : max = num3 : (num2 >= num3) ? max = num2 : max = num3;

  print('max number among $num1 , $num2 and $num3 is $max');
}