class Rectangle {
  double width;
  double height;

  // No-arg constructor
  Rectangle({this.width = 1, this.height = 1});

  // Parameterized constructor
  Rectangle.withSize(this.width, this.height);

  double getArea() {
    return width * height;
  }

  double getPerimeter() {
    return 2 * (width + height);
  }
}

void main() {
  Rectangle r1 = Rectangle.withSize(4, 40);
  Rectangle r2 = Rectangle.withSize(3.5, 35.9);

  printRectangle(r1);
  printRectangle(r2);
}

void printRectangle(Rectangle r) {
  print("Width: ${r.width}");
  print("Height: ${r.height}");
  print("Area: ${r.getArea()}");
  print("Perimeter: ${r.getPerimeter()}");
  print("--------------------");
}
