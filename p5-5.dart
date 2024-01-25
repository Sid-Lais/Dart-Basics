// Write a Dart function named processNumbers that takes a list of integers and two closure functions (mapper and filter). The mapper function should transform each integer in the list, and the filter function should filter out specific integers based on a condition. The processNumbers function should return a new list with the transformed and filtered integers.
List<int> processNumbers(
    List<int> inputList, int Function(int) mapper, bool Function(int) filter) {
  List<int> result = [];

  for (int number in inputList) {
    int mappedNumber = mapper(number);

    if (filter(mappedNumber)) {
      result.add(mappedNumber);
    }
  }

  return result;
}

void main() {
  // Example usage:
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  // Mapping each number to its square and filtering even squares
  List<int> result = processNumbers(
      numbers,
      (int num) => num * num, // Mapper function (square)
      (int num) => num % 2 == 0 // Filter function (even)
      );

  print("Mapped and filtered numbers: $result");
}
