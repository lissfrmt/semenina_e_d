import 'dart:io';
void main() {
  int N = int.parse(stdin.readLineSync()!);
  String output = "";
  for (int i = 0; i < N; i++) {
    output += (4 + 3 * i).toString() + " ";
  }
  print(output);
}