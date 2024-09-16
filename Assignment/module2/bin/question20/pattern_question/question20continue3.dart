/*
    *            1            1                   *
    * *          1 2          2 2               * *
    * * *        1 2 3        3 3 3           * * *
    * * * *      1 2 3 4      4 4 4 4       * * * *
    * * * * *    1 2 3 4 5    5 5 5 5 5   * * * * *
 */

import 'dart:io';

void main() {
  for (int i = 0; i <= 4; i++) {
    for (int j = 0; j <= i; j++) {
      stdout.write('*');
    }
    print('');
  }

  print('''
  
  ''');

  for (int i = 1; i <= 5; i++) {
    for (int j = 1; j <= i; j++) {
      stdout.write(j);
    }
    print('');
  }

  print('''
  
  ''');

  for (int i = 1; i <= 5; i++) {
    for (int j = 1; j <= i; j++) {
      stdout.write(i);
    }
    print('');
  }

  print('''
  
  ''');

  for(int i = 1; i <= 5; i++){
    for(int j = 1; j <= 5 - i; j++){
      stdout.write(' ');
    }

    for(int j = 1; j <= i; j++){
      stdout.write('*');
    }

    print('');
  }
}