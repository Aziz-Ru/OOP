class Animal {
  void sound() {
    print('Animal sound');
  }
}

class Dog extends Animal {
  @override
  void sound() {
    print('Dog sound');
  }
}

class Cat extends Animal {
  @override
  void sound() {
    print('Cat sound');
  }
}
