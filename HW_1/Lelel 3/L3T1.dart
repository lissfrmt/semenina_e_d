import 'dart:io';
void main() {
  List<int> input = [];
  stdin.readLineSync()!.split(' ').forEach((element) {
    input.add(int.parse(element));
  });
  int N = input[0];
  int A = input[1];
  int B = input[2];
  int C = input[3];
  int D = input[4];
  List<int> numbers = [];
  for (int i = 1; i<=N; i++) {
    numbers.add(i);
  }
  for (int i = 0; i<=(B-A); i++) {
    numbers[A+i-1] = B-i;
  }
  for (int i = 0; i<=((D-C)~/2); i++) {
    int t = numbers[C+i-1];
    numbers[C+i-1] = numbers[D-i-1];
    numbers[D-i-1] = t;
  }
  String output = "";
  for (int i in numbers)
    output += i.toString() + " ";
  print(output);
}