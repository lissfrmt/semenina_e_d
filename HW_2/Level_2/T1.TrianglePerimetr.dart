import 'dart:math';
double segmentLength({required int x1, required int y1, required int x2, required int y2}) {
  return sqrt((x2 - x1)*(x2 - x1) + (y2 - y1)*(y2 - y1));
}

double trianglePerimetr({required int x1, required int y1, required int x2, required int y2, required int x3, required int y3}) {
  double a = segmentLength(x1: x1, y1: y1, x2: x2, y2: y2);
  double b = segmentLength(x1: x2, y1: y2, x2: x3, y2: y3);
  double c = segmentLength(x1: x1, y1: y1, x2: x3, y2: y3);
  return a + b + c;
}

void main() {
  print(segmentLength(x1: 0, y1: 0, x2: 0, y2: 2));
  print(trianglePerimetr(x1: 0, y1: 0, x2: 10, y2: 0, x3: 10, y3: 10));
}