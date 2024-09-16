/*
19. Write a program of to find out the Area of Triangle, Rectangle and
Circle using If Condition.(Must Be Menu Driven)
 */
import 'dart:io';

void main(){
  String? shape;
  do{
    stdout.write('Enter shape to find out area\n');
    shape = stdin.readLineSync();

    switch(shape?.toLowerCase()){
      case 'rectangle':
        stdout.write('Enter length of the rectangle : ');
        double length = double.parse(stdin.readLineSync().toString());
        stdout.write('Enter height of the rectangle : ');
        double height = double.parse(stdin.readLineSync().toString());
        print('Area of rectangle is ${length*height}');
        print('');
        break;
      case 'circle':
        stdout.write('Enter radius of the circle : ');
        double radius = double.parse(stdin.readLineSync().toString());
        print('Area of circle is ${3.14*radius*radius}');
        print('');
        break;
      case 'triangle':
        stdout.write('Enter base of the triangle : ');
        double base = double.parse(stdin.readLineSync().toString());
        stdout.write('Enter height of the triangle : ');
        double height = double.parse(stdin.readLineSync().toString());
        print('Area of triangle is ${1/2 * base * height}');
        print('');
        break;
      case 'exit':
        print('');
        break;
      default:
        print('''
      ERROR - you entered invalid shape,
              Enter valid shape(rectangle,circle or triangle) or
              Enter Exit for Exiting. 
      ''');
    }
  }while(shape?.toLowerCase() != 'exit');

}