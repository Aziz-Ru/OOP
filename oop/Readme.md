## Object Oriented Programming

Object-oriented programming aims to implement real-world entities like inheritance, hiding, polymorphism, etc. in programming.

- Access Modifier:

Defines the access type of the method i.e. from where it can be accessed in your application.

- public: Accessible in all classes in your application.

- protected: Accessible within the package in which it is defined and in its

- private: Accessible only within the class in which it is defined.

- default (declared/defined without using any modifier): Accessible within the same class and package within which its class is defined.

## class

A class is a user-defined blueprint or prototype from which objects are created. It represents the set of properties or methods that are common to all objects of one type.

## object

An object is a basic unit of Object-Oriented Programming that represents real-life entities.

- State: It is represented by the attributes of an object.

- Behavior: It is represented by the methods of an object.

- Identity: It is a unique name given to an object that enables it to interact with other objects.

- Method: A method is a collection of statements that perform some specific task and return the result to the caller.

## Four Piller of OOP

### Encapsulation

Encapsulation is the concept of bundling data (attributes) and the methods (functions) that operate on that data into a single unit or class.

### Inheritance

Inheritance allows you to define a class that extends the functionality of another class.if name of method is same parent class and child class method is overriding.

```
class Animal {
  move(): void {
    console.log("The animal moves.");
  }
}

class Dog extends Animal {
  bark(): void {
    console.log("Bark!");
  }
}

const dog = new Dog();
dog.move(); // Output: The animal moves.
dog.bark(); // Output: Bark!

```

## Abstraction

Abstraction involves hiding the complexity of certain operations or systems and exposing only the necessary parts.
