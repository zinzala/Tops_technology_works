/*
18. Write a Program of Addition, Subtraction ,Multiplication and
Division using Switch case.(Must Be Menu Driven)
 */

import 'dart:io';

void main(){

   int? choice;
   do{
     stdout.write('Enter 1st number : ');
     int num1 = int.parse(stdin.readLineSync().toString());

     stdout.write('Enter 2nd number : ');
     int num2 = int.parse(stdin.readLineSync().toString());

     stdout.write('''
     Enter your choice:
     1 for addition
     2 for subtraction
     3 for multiplication
     4 for division
     0 for Exit
     ''');
     choice = int.parse(stdin.readLineSync().toString());

     switch(choice){
       case 1:
         print('$num1 + $num2 = ${num1+num2}');
         break;
       case 2:
         print('$num1 - $num2 = ${num1-num2}');
         break;
       case 3:
         print('$num1 x $num2 = ${num1*num2}');
         break;
       case 4:
         print('$num1 / $num2 = ${num1/num2}');
         break;
       case 0:
         print('');
         break;
       default:
         print('''
         ERROR - you entered invalid number,
                 Enter valid number(1...4) or
                 Enter 0 for Exiting. 
         ''');
         break;
     }
   }while(choice != 0);
}
