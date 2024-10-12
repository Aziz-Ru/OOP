import 'circle.dart';
import 'polimorphism.dart';

void main(List<String> args) {
  Circle circle = Circle(10);
  print(circle.area());
  Square sq = Square(10);
  print(sq.area());

  Cat cat = Cat();
  Dog dog = Dog();
  cat.sound();
  dog.sound();
}
