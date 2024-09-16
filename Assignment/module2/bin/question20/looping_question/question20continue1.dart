/*
  4. Write a program you have to find the factorial of given number.
  5. Write a program you have to print the Fibonacci series up to user given number
  6. Write a program you have to print the table of given number.
 */
import 'dart:io';

void main(){
  // 4
  stdout.write('Enter number : ');
  int factNumber = int.parse(stdin.readLineSync().toString());
  int factorial = 1;
  int copy = factNumber;
  while(factNumber != 0){
    //factorial = factorial * factNumber;
    factorial *= factNumber;
    factNumber--;
  }
  print('Factorial of $copy is : $factorial');
  print('');

  // 5
  stdout.write('Enter number to print fibonacci series : ');
  int number3 = int.parse(stdin.readLineSync().toString());

  int num1 = 0;
  int num2 = 1;

  for(int i = 1; i <= number3; i++){
    stdout.write('$num1 ');
    int temp = num1 + num2;
    num1 = num2;
    num2 = temp;
  }
  print('');


  // 6
  stdout.write('Enter table number : ');
  int tableNumber = int.parse(stdin.readLineSync().toString());

  for(int i = 1; i <= 10; i++){
      print('$tableNumber * $i = ${tableNumber*i}');
  }

}