// 46. Create a program using List

void main() {
  List<int> numbers = [10, 20, 30, 40, 50];
  print("Initial List: $numbers");

  numbers.add(60);
  print("After adding 60: $numbers");

  numbers.remove(20);  // Removes the first occurrence of 20
  print("After removing 20: $numbers");

  int firstElement = numbers[0];
  print("First element: $firstElement");

  numbers[1] = 25;  // Change the second element to 25
  print("After modifying second element: $numbers");

  print("Looping through the list:");
  for (int number in numbers) {
    print(number);
  }

  print("Length of the list: ${numbers.length}");

  bool contains40 = numbers.contains(40);
  print("List contains 40: $contains40");

  numbers.clear();
  print("List after clearing all elements: $numbers");
}
