import 'dart:io';
void BinFraction({required double x, required int n}) {
  for (int i = 0; i<n; i++) {
    x *=2;
    int c = x ~/ 1;
    stdout.write(c);
    if (c == 1) {
      x -=1;
    }
  }
}

void main() {
  BinFraction(x: 0.1, n: 10);
}