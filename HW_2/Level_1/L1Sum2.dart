import 'dart:io';
int SumOfThirteen(int n) {
  int count = 1;
  for (int i = 1; i < n; i++) {
    int sum = 0;
    int num = i;
    while (num >=1) {
      sum += (num % 10);
      num = num ~/ 10;
    }
    if (sum % 13 == 0)
      count++;
  }
  return count;
}

void main() {
  int n = int.parse(stdin.readLineSync()!);
  print(SumOfThirteen(n).toString());
}