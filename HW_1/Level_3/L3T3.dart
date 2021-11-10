import 'dart:io';
void main() {
  var set = Set();
  bool flag = false;
  stdin.readLineSync()!.split('').forEach((element) {
    if (set.contains(element)) {
      print("YES");
      flag = true;
    }
    else
      set.add(element);
  });
  if (!flag)
    print("NO");
}