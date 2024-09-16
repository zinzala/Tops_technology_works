/*

  16. Write a program user enter the 5 subjects mark. You have to make a
total and find the percentage. percentage > 75 you have to print
“Distinction” percentage > 60 and percentage <= 75 you have to
print “First class” percentage >50 and percentage <= 60 you have  to print
“Second class” percentage > 35 and percentage <= 50 you have to print
“Pass class” Otherwise print “Fail”

 */

import 'dart:io';

void main(){

  stdout.write('Enter Mathematics marks : ');
  double mathMarks = double.parse(stdin.readLineSync().toString());

  stdout.write('Enter Science  marks : ');
  double scienceMarks = double.parse(stdin.readLineSync().toString());

  stdout.write('Enter English marks : ');
  double englishMarks = double.parse(stdin.readLineSync().toString());

  stdout.write('Enter Hindi marks : ');
  double hindiMarks = double.parse(stdin.readLineSync().toString());

  stdout.write('Enter Gujarati marks : ');
  double gujaratiMarks = double.parse(stdin.readLineSync().toString());

  double totalMarks = mathMarks + scienceMarks + englishMarks + hindiMarks + gujaratiMarks;
  double percentage =  (totalMarks * 100) / 500;

  if(percentage > 75){
    print('''
    total marks : $totalMarks - Distinction
    ''');
  }else if(percentage > 60 && percentage <= 75){
    print('''
    total marks : $totalMarks - First class
    ''');
  }else if(percentage > 50 && percentage <= 60){
    print('''
    total marks : $totalMarks - second class
    ''');
  }else if(percentage > 35 && percentage <= 50){
    print('''
    total marks : $totalMarks - Pass class
    ''');
  }else{
    print('''
    total marks : $totalMarks - Fail
    ''');
  }

}