import 'dart:io';
void main() {
  int sum = 0;
  int count = 0;
  stdin.readLineSync()!.split(' ').forEach((element) {
    if ((int.parse(element) % 2) != 0) {
      sum += int.parse(element);
      count++;
    }
  });
  if (sum == 0)
    print("NO");
  else print((sum/count).toStringAsFixed(2));
}