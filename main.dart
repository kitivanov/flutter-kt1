class Animal {
  String name;
  int age;

  Animal(this.name, this.age);

  void eat() {
    _digestFood();
    print("$name is eating.");
  }

  void sleep() {
    print("$name is sleeping.");
  }

  void _digestFood() {
    print("$name digests food.");
  }
}

class Dog extends Animal {
  Dog(String name, int age) : super(name, age);

  @override
  void eat() {
    print("$name (dog) starts eating.");
    super.eat();
  }

  static void bark() {
    print("Woof!");
  }
}

void main() {
  Animal animal = Animal("Beast", 20);
  animal.eat();
  animal.sleep();

  print("");

  Dog dog = Dog("Pes", 3);
  dog.eat();
  dog.sleep();

  Dog.bark();
}