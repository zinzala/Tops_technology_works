// 8. Write a program to calculate sum of 5 subjects & find the
// percentage. Subject marks entered by user.
import 'dart:io';
void main(){
  late int gujarati,math,english,science,hindi;
  gujarati = math = english = science = hindi = 0;
  stdout.write('Enter marks(Gujarati) : ');
  String? inputGuj = stdin.readLineSync();
  if(inputGuj != null && inputGuj.isNotEmpty){
      gujarati = int.parse(inputGuj);
  }

  stdout.write('Enter marks(Math) : ');
  String? inputMath = stdin.readLineSync();
  if(inputMath != null && inputMath.isNotEmpty){
     math = int.parse(inputMath);
  }

  stdout.write('Enter marks(English) : ');
  String? inputEng = stdin.readLineSync();
  if(inputEng != null && inputEng.isNotEmpty){
     english = int.parse(inputEng);
  }

  stdout.write('Enter marks(Science) : ');
  String? inputScience = stdin.readLineSync();
  if(inputScience != null && inputScience.isNotEmpty){
     science = int.parse(inputScience);
  }

  stdout.write('Enter marks(Hindi) : ');
  String? inputHindi = stdin.readLineSync();
  if(inputHindi != null && inputHindi.isNotEmpty){
     hindi = int.parse(inputHindi);
  }

  int totalMark = gujarati + math + english + science + hindi;

  if(gujarati <= 100 && math <= 100 && english <= 100 && science <= 100 && hindi <= 100 && totalMark <= 500){
    print('Your percentage is : ${(totalMark/500) * 100}');
  }else{
    print('Enter valid marks of each subject');
  }
}
