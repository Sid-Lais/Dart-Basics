//Write a Dart function named filterList that takes a list of integers and a closure function as arguments. The closure function should determine whether an integer should be included in the filtered list. The filterList function should return a new list containing only the integers that satisfy the condition specified by the closure function.
List<int> filterList(List<int> inputList, bool Function(int) closure) {
  List<int> filteredList = [];

  for (int number in inputList) {
    if (closure(number)) {
      filteredList.add(number);
    }
  }

  return filteredList;
}

void main() {
  // Example usage:
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  // Filtering even numbers
  List<int> resultEven = filterList(numbers, (int num) => num % 2 == 0);
  print("Filtered even numbers: $resultEven");

  // Filtering numbers greater than 5
  List<int> resultGreaterThan5 = filterList(numbers, (int num) => num > 5);
  print("Numbers greater than 5: $resultGreaterThan5");
}
