import 'dart:io';
void main() {
  String word = "";
  stdin.readLineSync()!.split(' ').forEach((element) {
    if (element.length > word.length)
      word = element;
  });
  print(word + "\n" + word.length.toString());
}