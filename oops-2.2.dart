// Create a Dart class named Product with properties name, price, and quantity. Define an interface named ElectronicDevice with methods turnOn and turnOff. Extend the Product class to create two subclasses: Television and Laptop. Implement the ElectronicDevice interface in both subclasses. The Television class should have an additional property screenSize, and the Laptop class should have an additional property batteryLife. Implement constructors for each class to initialize their properties.

// Interface: ElectronicDevice
abstract class ElectronicDevice {
  void turnOn();
  void turnOff();
}

// Base class
class Product {
  String name;
  double price;
  int quantity;

  // Constructor for Product
  Product(this.name, this.price, this.quantity);
}

// Subclass of Product: Television
class Television extends Product implements ElectronicDevice {
  double screenSize;

  // Constructor for Television
  Television(String name, double price, int quantity, this.screenSize)
      : super(name, price, quantity);

  @override
  void turnOn() {
    print('Television is turning on.');
  }

  @override
  void turnOff() {
    print('Television is turning off.');
  }
}

// Subclass of Product: Laptop
class Laptop extends Product implements ElectronicDevice {
  double batteryLife;

  // Constructor for Laptop
  Laptop(String name, double price, int quantity, this.batteryLife)
      : super(name, price, quantity);

  @override
  void turnOn() {
    print('Laptop is turning on.');
  }

  @override
  void turnOff() {
    print('Laptop is turning off.');
  }
}

void main() {
  // Example usage:
  Television tv1 = Television('Smart TV', 799.99, 1, 55.0);
  tv1.turnOn();
  tv1.turnOff();

  Laptop laptop1 = Laptop('UltraBook', 1299.99, 1, 10.0);
  laptop1.turnOn();
  laptop1.turnOff();
}
