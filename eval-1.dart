//You are building a math utility library in Dart. Create a class MathUtils with static methods to perform common mathematical operations such as finding the square root, calculating the factorial,and computing the power of a number. Demonstrate the usage of the static keyword to access these methods without creating an instance of the class.

import 'dart:io';

class MathUtils {
  static double squareRoot(double number) {
    double temp, sqrt = number / 2;
    do {
      temp = sqrt;
      sqrt = (temp + (number / temp)) / 2;
    } while ((temp - sqrt).abs() > 0.000001);
    return sqrt;
  }

  static int factorial(int number) {
    int result = 1;
    for (int i = 1; i <= number; i++) {
      result *= i;
    }
    return result;
  }

  static num power(int base, int exponent) {
    num result = 1;
    for (int i = 0; i < exponent; i++) {
      result *= base;
    }
    return result;
  }
}

void main() {
  print("Enter number to calculate square root:");
  double number = double.parse(stdin.readLineSync()!);
  print("Square root of $number is : ${MathUtils.squareRoot(number)}");

  print("Enter number to calculate factorial:");
  int number2 = int.parse(stdin.readLineSync()!);
  print("Factorial of $number2 is : ${MathUtils.factorial(number2)}");

  print("Enter number:");
  int base = int.parse(stdin.readLineSync()!);
  print("Enter the exponent:");
  int exponent = int.parse(stdin.readLineSync()!);
  print(
      "Power of $base raised to $exponent is : ${MathUtils.power(base, exponent)}");
}
