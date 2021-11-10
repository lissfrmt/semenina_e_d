class Collections {
  static int time = 0;
  static int sum(List <int> n) {
    int sum = 0;
    for (int i = 0; i < n.length; i++) {
      sum += n[i];
    }
    time++;
    return sum;
  }
}

void main() {
  print(Collections.time); //0
  print(Collections.sum([1, 2, 3, 5])); //11
  print(Collections.time); //1
  print(Collections.sum([6, 2, 5])); //13
  print(Collections.time); //2
}