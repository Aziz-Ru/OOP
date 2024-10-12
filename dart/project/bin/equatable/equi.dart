import 'package:equatable/equatable.dart';

void main(List<String> args) {
  Person p1 = Person(name: 'John', age: 30);
  Person p2 = Person(name: 'John', age: 30);
  print(p1 == p2);
  // without Equatable it is false
  print(p1.hashCode);
  print(p2.hashCode);
}

class Person extends Equatable {
  final String name;
  final int age;
  Person({required this.name, required this.age});

  @override
  List<Object?> get props => [name, age];
}

/**
 * Conclusion:
 * Equatable is a package that helps to compare objects in Dart.
 * It is useful when you want to compare objects based on their properties.
 * It is useful when you want to compare objects based on their properties.
 * It is useful when you want to compare objects based on their properties.
 */