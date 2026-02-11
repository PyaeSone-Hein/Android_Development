import 'dart:io';
import 'dart:math';

class QuadraticEquation {
  double a, b, c;

  QuadraticEquation(this.a, this.b, this.c);

  double getDiscriminant() {
    return b * b - 4 * a * c;
  }

  double getRoot1() {
    if (getDiscriminant() < 0) return 0;
    return (-b + sqrt(getDiscriminant())) / (2 * a);
  }

  double getRoot2() {
    if (getDiscriminant() < 0) return 0;
    return (-b - sqrt(getDiscriminant())) / (2 * a);
  }
}

void main() {
  print("Quadratic Equation: ax^2 + bx + c = 0");

  stdout.write("Enter a: ");
  double a = double.parse(stdin.readLineSync()!);

  stdout.write("Enter b: ");
  double b = double.parse(stdin.readLineSync()!);

  stdout.write("Enter c: ");
  double c = double.parse(stdin.readLineSync()!);

  QuadraticEquation q = QuadraticEquation(a, b, c);
  double d = q.getDiscriminant();

  if (d > 0) {
    print("The equation has two roots: ${q.getRoot1()} and ${q.getRoot2()}");
  } else if (d == 0) {
    print("The equation has one root: ${q.getRoot1()}");
  } else {
    print("The equation has no roots.");
  }
}
