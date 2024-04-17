//  Write a Dart function named fetchData that simulates fetching data from a remote server asynchronously using a Future. The function should return a Future that resolves to a list of integers. Inside the function, use the Future.delayed constructor to simulate a network delay of 2 seconds, and then return a Future that resolves to a list of integers.

import 'dart:async';

Future<List<int>> fetchData() {
  return Future.delayed(Duration(seconds: 2), () {
    return Future.value([1, 2, 3, 4, 5]);
  });
}

void main() {
  fetchData().then((data) {
    print("Data fetched: $data");
  }).catchError((error) {
    print("Error fetching data: $error");
  });
}
