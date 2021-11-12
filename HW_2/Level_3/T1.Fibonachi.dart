import 'dart:io';
int Fib (int n) {
  int numberf = 0;
  int numbers = 1;
  int number = 0;
  if(n==1) {
    return numberf;
  }
  if(n==2) {
    return numbers;
  }
  for (int i = 2; i<n; i++) {
    //0, 1, 1, 2, 3, 5, 8, 13, 21, 34
    number = numberf + numbers; // получаю 3 число на 1 итерации
    numberf = numbers;
    numbers = number;
  }
  return number;
}

void main() {
  int n = int.parse(stdin.readLineSync()!);
  print(Fib(n));
}