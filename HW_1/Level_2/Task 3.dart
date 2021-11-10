import 'dart:io';
void main() {
  int sum = 0;
  stdin.readLineSync()!.split(' ').forEach((element) {
    if ((int.parse(element) % 2) == 0)
      sum += int.parse(element);
  });
  if (sum == 0)
    print("NO");
  else print(sum);
}