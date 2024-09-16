// 47. Create a program using Set
void main() {
  Set<int> numbers = {10, 20, 30, 40, 50};
  print("Initial Set: $numbers");

  numbers.add(60);
  print("After adding 60: $numbers");

  numbers.add(30);
  print("After trying to add duplicate 30: $numbers");

  numbers.remove(20);
  print("After removing 20: $numbers");

  bool contains40 = numbers.contains(40);
  print("Set contains 40: $contains40");

  print("Looping through the set:");
  for (int number in numbers) {
    print(number);
  }

  print("Length of the set: ${numbers.length}");

  List<int> numberList = numbers.toList();
  print("Set converted to List: $numberList");

  numbers.clear();
  print("Set after clearing all elements: $numbers");
}
