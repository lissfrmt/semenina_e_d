import 'dart:io';

void main() {
  int counter = 0;
  String out = "";
  stdin.readLineSync()!.split('').forEach((element) {
    if (element == ' ' && counter >= 1) {
      counter++;
    }
    else if (element == ' '){
      counter++;
      out+= " ";
    }
    else {
      counter = 0;
      out += element;
    }
  });
  print(out);
}