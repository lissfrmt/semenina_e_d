import 'dart:io';
void main() {
  List<int> input = [];
  stdin.readLineSync()!.split(' ').forEach((element) {
    input.add(int.parse(element));
  });
  Map <int, int> numbers = new Map();
  for (int value in input) {
    if (!numbers.containsKey(value))
      numbers[value] = 1;
    else
      numbers[value] = numbers[value]! + 1;
  }
  int maxOften = numbers[input[0]]!;
  int maxValue = input[0];
  for (int nums in numbers.keys) {
    if (numbers[nums]! > maxOften) {
      maxOften = numbers[nums]!;
      maxValue = nums;
    }
    else if (numbers[nums] == maxOften)
      if (nums < maxValue)
        maxValue = nums;
  }
  print(maxValue);
}