// Write a Dart function named fetchUserData that simulates fetching user data from a remote server asynchronously using a Future. The function should take a user ID as a parameter and return a Future that resolves to a Map representing the user's data (e.g., name, age, email). Inside the function, use the Future.delayed constructor to simulate a network delay of 3 seconds, and then return a Future that resolves to a Map containing dummy user data.

import 'dart:async';

Future<Map<String, dynamic>> fetchUserData(String userID) {
  return Future.delayed(Duration(seconds: 3), () {
    Map<String, dynamic> userData = {
      'name': 'Siddarth',
      'age': 20,
      'email': 'sidlais@gmail.com'
    };
    return Future.value(userData);
  });
}

void main() {
  fetchUserData('123').then((userData) {
    print("User Data fetched: $userData");
  }).catchError((error) {
    print("Error fetching user data: $error");
  });
}
