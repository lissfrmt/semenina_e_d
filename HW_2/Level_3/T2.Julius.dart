import 'dart:io';
String Jul (String s, int k) {
  List<int> codes = s.codeUnits;
  String out = "";
  for (int i in codes) {
    int? o;
    if (i - k < 65) {
      o = 90 - k + i - 64;
    }
    else {
      o = i - k;
    }
    out += String.fromCharCode(o);
  }
  return out;
}

void main() {
  String s = stdin.readLineSync()!;
  int k = int.parse(stdin.readLineSync()!);
  print(Jul(s, k));
}
// ABCDEFGHIJKLMNOPQRSTUVWXYZ