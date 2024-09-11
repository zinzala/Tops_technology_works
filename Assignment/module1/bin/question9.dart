//9. Write a Program to show swap of two No's without using third variable.
void main(){
  int number1 = 8;
  int number2 = 16;

  number1 = number1 + number2;
  number2 = number1 - number2;
  number1 = number1 - number2;

  print(number1); // 16
  print(number2); // 8

  // with the help of pattern matching
  var (x,y) = (10,20); // pattern variable declaration
  (y,x) = (x,y);
  print(x); //20
  print(y); //10
}
