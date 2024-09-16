/*
  1. Write a program to print the 1 to 10 using For loop.
  2. Write a Program to print the 51 to 60 using while loop.
  3. Write a program to print the 100 to 81 using do while loop
 */
import 'dart:io';

void main(){
  // 1
    for(int i = 1; i <= 10; i++){
      stdout.write('$i ');
    }
    print('');

  // 2
    int number1 = 51;
    while(number1 != 61){
       stdout.write('$number1 ');
       number1++;
    }
    print('');

  // 3
    int number2 = 100;
    do{
      stdout.write('$number2 ');
      number2--;
    }while(number2 != 80);

}
