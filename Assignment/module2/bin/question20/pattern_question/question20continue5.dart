/*
        1       1               1           1
       2 2      2 3             0 1         4 4
      3 3 3     4 5 6           1 0 1       9 9 9
     4 4 4 4    7 8 9 10        1 0 1 0     16 16 16 16
    5 5 5 5 5   11 12 13 14 15  1 0 1 0 1   25 25 25 25 25

 */

import 'dart:io';

void main() {
  for(int i = 1; i <= 5; i++){
    for(int j = 1; j <= 5-i; j++){
      stdout.write(' ');
    }
    for(int j = 1; j <= i; j++){
      stdout.write('$i ');
    }

    print('');
  }
  print('''
  
  ''');
  int num = 1;
  for(int i = 1; i <= 5; i++){
    for(int j = 1; j <= i; j++){
      stdout.write('${num++} ');
    }
    print('');
  }

  print('''
  
  ''');

  for(int i = 1; i <= 5; i++){
    for(int j = 1; j <= i; j++){
      if(j % 2 == 0){
        stdout.write('0 ');
      }else{
        stdout.write('1 ');
      }
    }
    print('');
  }

  print('''
  
  ''');

  int square = 0;
  for(int i = 1; i <= 5; i++){
    square = i * i;
    for(int j = 1; j <= i; j++){
      stdout.write('$square ');
    }
    print('');
  }

}
