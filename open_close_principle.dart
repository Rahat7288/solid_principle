void main() {
  print("  Open Close Principle.............");

  /*

  in open close principle the softwae entites (classes, fodifires , functuons ) are open to extention but 
  not for the modification

  ====================================

  Imagine a car designed to only run on gasoline. Adding support for electric or hybrid engines would 
  require significant modifications to the car's core design. An OCP-compliant car would have
  a modular design, allowing for easy extension with new engine types without modifying existing components.
  */

  Circle circle = Circle(4.2);

  print("Area of circle ${circle.area()}");
}

abstract class Shape {
  double area();
}

class Circle implements Shape {
  final double radious;

  Circle(
    this.radious,
  );

  @override
  double area() {
    return 3.14 * radious * radious;
  }
}

class Rectanguler implements Shape {
  final double width;
  final double height;

  Rectanguler(
    this.width,
    this.height,
  );

  @override
  double area() {
    return height * width;
  }
}
