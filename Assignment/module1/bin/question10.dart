// 10. Write a Program to check the given number is Positive, Negative.
import 'dart:io';

void main(){
  stdout.write("Enter number : ");
  String? input = stdin.readLineSync();
  if(input != null && input.isNotEmpty){
    int number = int.parse(input);
    if(number > 0){
      print('$number is positive');
    }else{
      print('$number is negative');
    }
  }
}

