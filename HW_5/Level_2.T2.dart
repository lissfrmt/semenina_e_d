class A {
  static int? _a;
  static set a(int val) {
    _a = val;
    print("Hello World!");
  }
}

void main() {
  A.a = 0;
}