// 48. Create a program using Map

void main() {
  Map<String, int> studentScores = {
    'Alice': 85,
    'Bob': 92,
    'Charlie': 78
  };

  print("Initial Map: $studentScores");

  studentScores['David'] = 88;
  print("After adding David: $studentScores");

  studentScores['Alice'] = 90;  // Updating Alice's score
  print("After updating Alice's score: $studentScores");

  studentScores.remove('Charlie');  // Removes 'Charlie' and his score
  print("After removing Charlie: $studentScores");

  int? bobScore = studentScores['Bob'];
  print("Bob's score: $bobScore");

  bool hasEve = studentScores.containsKey('Eve');
  print("Map contains key 'Eve': $hasEve");

  print("Looping through the Map:");
  studentScores.forEach((key, value) {
    print("$key: $value");
  });

  print("Keys in the Map: ${studentScores.keys}");

  print("Values in the Map: ${studentScores.values}");

  studentScores.clear();
  print("Map after clearing all elements: $studentScores");
}
