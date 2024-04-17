Iterable<int> primeGenerator() sync* {
  List<int> primes = [];

  // Helper function to check if a number is prime
  bool isPrime(int n) {
    if (n <= 1) return false;
    if (n <= 3) return true;
    if (n % 2 == 0 || n % 3 == 0) return false;
    for (int i = 5; i * i <= n; i += 6) {
      if (n % i == 0 || n % (i + 2) == 0) return false;
    }
    return true;
  }

  // Generate prime numbers indefinitely
  int number = 2;
  while (true) {
    if (isPrime(number)) {
      primes.add(number);
      yield number;
    }
    number++;
  }
}

void main() {
  // Generate prime numbers indefinitely
  var generator = primeGenerator().iterator;
  for (int i = 0; i < 10; i++) {
    generator.moveNext();
    print(generator.current);
  }
}
