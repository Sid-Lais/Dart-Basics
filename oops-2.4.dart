// Create an abstract Dart class named Shape with abstract methods calculateArea and calculatePerimeter. Implement two interfaces: Drawable with method drawShape and Identifiable with method getShapeId. Define two subclasses of Shape: Circle and Rectangle. Override the abstract methods in each subclass to calculate the area and perimeter specific to each shape. Implement the Drawable interface in both subclasses to draw the respective shapes. Implement the Identifiable interface in both subclasses to generate and retrieve unique shape IDs.

// Interface: Drawable
// Interface: Drawable
abstract class Drawable {
  void drawShape();
}

// Interface: Identifiable
abstract class Identifiable {
  String getShapeId();
}

// Abstract class: Shape
abstract class Shape implements Drawable, Identifiable {
  double calculateArea();
  double calculatePerimeter();
}

// Subclass of Shape: Circle
class Circle extends Shape {
  static int _circleCounter = 0; // Counter for generating unique IDs
  double radius;
  String _shapeId; // Unique ID for the circle

  // Constructor for Circle
  Circle(this.radius) : _shapeId = 'C${++_circleCounter}';

  @override
  double calculateArea() {
    return 3.14 * radius * radius;
  }

  @override
  double calculatePerimeter() {
    return 2 * 3.14 * radius;
  }

  @override
  void drawShape() {
    print('Drawing Circle');
    // Add drawing logic specific to Circle
  }

  @override
  String getShapeId() {
    return _shapeId;
  }
}

// Subclass of Shape: Rectangle
class Rectangle extends Shape {
  static int _rectangleCounter = 0; // Counter for generating unique IDs
  double length;
  double width;
  String _shapeId; // Unique ID for the rectangle

  // Constructor for Rectangle
  Rectangle(this.length, this.width) : _shapeId = 'R${++_rectangleCounter}';

  @override
  double calculateArea() {
    return length * width;
  }

  @override
  double calculatePerimeter() {
    return 2 * (length + width);
  }

  @override
  void drawShape() {
    print('Drawing Rectangle');
    // Add drawing logic specific to Rectangle
  }

  @override
  String getShapeId() {
    return _shapeId;
  }
}

void main() {
  // Example usage:
  Circle circle = Circle(5.0);
  print(
      'Circle - Area: ${circle.calculateArea()}, Perimeter: ${circle.calculatePerimeter()}, ID: ${circle.getShapeId()}');
  circle.drawShape();

  Rectangle rectangle = Rectangle(4.0, 6.0);
  print(
      'Rectangle - Area: ${rectangle.calculateArea()}, Perimeter: ${rectangle.calculatePerimeter()}, ID: ${rectangle.getShapeId()}');
  rectangle.drawShape();
}
