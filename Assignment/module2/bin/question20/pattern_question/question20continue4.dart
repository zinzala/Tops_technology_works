/*
     1       *           *           1
    21      ***         * *         1 2
   321     *****       * * *       1 2 3
  4321    *******     * * * *     1 2 3 4
 54321   *********   * * * * *   1 2 3 4 5

 */

import 'dart:io';

void main(){

  for(int i = 1; i <= 5; i++){
      for(int j = 1; j <= 5-i; j++){
        stdout.write(" ");
      }
      for(int j = i; j >= 1; j--){
        stdout.write(j);
      }
      print('');
    }
    print('''

    ''');

   for(int i = 1; i <= 5; i++){
     for(int j = 1; j <= 2*5-1; j++){
       if(j >= 5-(i-1) && j <= 5+(i-1)){
         stdout.write('*');
       }else{
         stdout.write(' ');
       }
     }
     print('');
   }
  print('''

    ''');

   for(int i = 1; i <= 5; i++){
     for(int j = 1; j <= 5-i; j++){
       stdout.write(' ');
     }
     for(int j = 1; j <= i; j++){
       stdout.write('* ');
     }

     print('');
   }
  print('''

    ''');

   for(int i = 1; i <= 5; i++){
    for(int j = 1; j <= 5-i; j++){
      stdout.write(' ');
    }
    for(int j = 1; j <= i; j++){
      stdout.write('$j ');
    }

    print('');
  }



}
