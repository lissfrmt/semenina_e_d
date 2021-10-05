import 'dart:io';
void main() {
  List<int> input = [];
  stdin.readLineSync()!.split(' ').forEach((element) {
    input.add(int.parse(element));
  });
  String output = "";
  for (int i = 0; i<input.length; i+=2) {
    output += input[i].toString() + " ";
  }
  print(output);
}