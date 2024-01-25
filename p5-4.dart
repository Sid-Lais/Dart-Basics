// Create a Dart function named generateFibonacciFunction that returns a closure function. The closure function, when called with an integer n, should return the nth Fibonacci number.
Function(int) generateFibonacciFunction() {
  int fib(int n) {
    if (n <= 1) {
      return n;
    } else {
      return fib(n - 1) + fib(n - 2);
    }
  }

  return fib;
}

void main() {
  // Example usage:
  final fibonacciFunction = generateFibonacciFunction();

  // Getting the 7th Fibonacci number
  int result = fibonacciFunction(7);
  print("7th Fibonacci number: $result");

  // Getting the 10th Fibonacci number
  result = fibonacciFunction(10);
  print("10th Fibonacci number: $result");
}
