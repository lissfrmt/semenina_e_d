import 'dart:io';

int SumOfDigits(String n) {
  int sum = 0;
  for (int i = 0; i < n.length; i++) {
    sum += int.parse(n[i]);
  }
  return sum;
}

void main() {
  String n = stdin.readLineSync()!;
  int result = SumOfDigits(n);
  print(result);
}