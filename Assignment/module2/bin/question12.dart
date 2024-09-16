/*
    12. Write a Program to check the given number is prime or not prime.
 */
import 'dart:io';

void main(){
  print('enter number');

  int n = int.parse(stdin.readLineSync().toString());
  if(n == 1){
    print('$n is not a prime number');
  }else if(n == 2){
    print('$n is a prime number');
  }else if(n % 2 == 0){
    print('$n is not a prime number');
  }else{
    print('$n is a prime number');
  }
}