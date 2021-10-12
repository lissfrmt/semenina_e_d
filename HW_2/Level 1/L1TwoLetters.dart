import 'dart:io';
void Letter(String s) {
  Set letters = {};
  for (int i = 0; i < s.length; i++) {
    if (letters.contains(s[i]))
      print(s[i]);
    else letters.add(s[i]);
  }
}

void main() {
  String s = stdin.readLineSync()!;
  Letter(s);
}