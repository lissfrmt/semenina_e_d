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

  String work() { return "None";}
}

class Employee extends Person {
  String company = "";
  Employee(String name, int age, this.company): super(name, age) {}
  @override
  String toString() { return "($name, $age, $company)";}
  @override
  String work () {return "Manager";}
}

void main() {
  Person p = Person("Test", 3);
  print(p);
  p.setAge(5);
  p.setName("Vasya");
  print(p);
  print(p.work());
  Employee e = Employee("1", 2, "3");
  print(e);
  print(e.work());
}