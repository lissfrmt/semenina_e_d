import 'dart:io';
void main() {
  List<int> input = [];
  stdin.readLineSync()!.split(' ').forEach((element) {
    input.add(int.parse(element));
  });
  int X = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < input.length; i++) {
    if (input[i] == X) {
      print(i + 1);
      return;
    }
  }
  print("NO");
}