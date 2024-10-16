## Object Oriented Programming

- ### Dart

- ### Design Patterns

- Creational Patterns

  - Abstract Factory:Provide an interface for creating families of related or dependent objects without specifying their concrete classes.

  - Builder:Separate the construction of a complex object from its representation so
    that the same construction process can create different representations.

  - Factory Method:Define an interface for creating an object, but let subclasses de-
    cide which class to instantiate. Factory Method lets a class defer instantiation to
    subclasses.

  - Prototype:Specify the kinds of objects to create using a prototypical instance, and

    create new objects by copying this prototype

  - Singleton:Ensure a class only has one instance, and provide a global point of
    access to it.

- Structural Patterns
  - Adapter
  - Bridge
  - Composite
  - Decorator
  - Facade
  - Flyweight
  - Proxy

### Factory Method

Define an interface for creating an object, but let subclasses decide which class toinstantiate. Factory Method lets a class defer instantiation to subclasses.
Use the Factory Method pattern when
• a class can't anticipate the class of objects it must create.
• a class wants its subclasses to specify the objects it creates.
• classes delegate responsibility to one of several helper subclasses, and you
want to localize the knowledge of which helper subclass is the delegate.


## Participants

Product (Document)
- defines the interface of objects the factory method creates.

ConcreteProduct (MyDocument)
- implements the Product interface.


Creator (Application)
- declares the factory method, which returns an object of type Product. Cre-
ator may also define a default implementation of the factory method that
returns a default ConcreteProduct object.

ConcreteCreator (MyApplication)
- overrides the factory method to return an instance of a ConcreteProduct

### Diffrence Between Factory Constructor and Named Contructor

A named constructor can only generate the instance of the current class. A factory constructor can decide which instance to return on runtime, it can return either the instance of the current class or any of the instances of its descendants class.


## Singleton

A Singleton design pattern ensures that a class has only one instance and provides a global point of access to it. In Dart, you can create a Singleton by making the constructor private and providing a static method to get the instance of the class.

```
class Singleton {
  // Step 1: Create a static instance of the class (the single instance)
  static final Singleton _instance = Singleton._internal();

  // Step 2: Make the constructor private to prevent external instantiation
  Singleton._internal();

  // Step 3: Provide a factory constructor to return the same instance every time
  factory Singleton() {
    return _instance;
  }

  // Example method to demonstrate functionality
  void showMessage() {
    print("Singleton instance: ${this.hashCode}");
  }
}

void main() {
  // Fetching the same instance of the Singleton class
  var singleton1 = Singleton();
  var singleton2 = Singleton();

  // Both singleton1 and singleton2 will point to the same instance
  singleton1.showMessage(); // Output: Singleton instance: <some hashcode>
  singleton2.showMessage(); // Output: Singleton instance: <same hashcode>
  
  // Check if both instances are the same
  print(singleton1 == singleton2);  // Output: true
}
```
