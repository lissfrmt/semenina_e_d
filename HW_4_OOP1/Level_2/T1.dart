class Person {
  int? age;
  String? name;

  Person(this.name, this.age);

  String toString() {
    return "($name, $age)";
  }
  void setAge(int a) {
    this.age = a;
  }
  void setName(String n) {
    this.name = n;
  }
}

void main() {
  Person p = Person("Test", 3);
  print(p);
  p.setAge(5);
  p.setName("Vasya");
  print(p);
}