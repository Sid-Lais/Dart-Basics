//Define a Dart class named Vehicle with properties make and model. Extend the Vehicle class to create two subclasses: Car and Truck. Further extend the Car class to create a subclass SportsCar. Implement constructors for each subclass to initialize their properties. The SportsCar class should have an additional property topSpeed.

// Base class
class Vehicle {
  String make;
  String model;

  // Constructor for Vehicle
  Vehicle(this.make, this.model);
}

// Subclass of Vehicle: Car
class Car extends Vehicle {
  int numberOfDoors;

  // Constructor for Car
  Car(String make, String model, this.numberOfDoors) : super(make, model);
}

// Subclass of Vehicle: Truck
class Truck extends Vehicle {
  double payloadCapacity;

  // Constructor for Truck
  Truck(String make, String model, this.payloadCapacity) : super(make, model);
}

// Subclass of Car: SportsCar
class SportsCar extends Car {
  int topSpeed;

  // Constructor for SportsCar
  SportsCar(String make, String model, int numberOfDoors, this.topSpeed)
      : super(make, model, numberOfDoors);
}

void main() {
  // Example usage:
  Vehicle vehicle1 = Vehicle('Toyota', 'Camry');
  print('Vehicle: ${vehicle1.make} ${vehicle1.model}');

  Car car1 = Car('Honda', 'Civic', 4);
  print('Car: ${car1.make} ${car1.model}, Doors: ${car1.numberOfDoors}');

  Truck truck1 = Truck('Ford', 'F-150', 1500.0);
  print(
      'Truck: ${truck1.make} ${truck1.model}, Payload Capacity: ${truck1.payloadCapacity} lbs');

  SportsCar sportsCar1 = SportsCar('Ferrari', '458 Italia', 2, 205);
  print(
      'Sports Car: ${sportsCar1.make} ${sportsCar1.model}, Doors: ${sportsCar1.numberOfDoors}, Top Speed: ${sportsCar1.topSpeed} mph');
}
