// Practice Questions:
// P4. Write a program that takes a list and returns a new list that contains all the elements of the first list minus all the duplicates.
// P5. Write a program that asks the user for a long string containing multiple words. Print back to the user the same string, except with the words in backwards order.

import 'dart:io';
import 'dart:math';

void main() {
  //palindrome();
  //random();
  //Fibonnaci();
}

// P1. Ask the user for a string and print out whether this string is a palindrome or not.
void palindrome() {
  print('enter a word');

  String? pal = stdin.readLineSync();

  int length = pal!.length;
  bool ans = true;

  for (int i = 0; i < length ~/ 2; i++) {
    if (pal[i] != pal[length - 1 - i]) {
      ans = false;
      break;
    }
  }
  print(ans);
}

// P2. Generate a random number between 1 and 100. Ask the user to guess the number, then tell them whether they guessed too low, too high, or exactly right.
void random() {
  int randomNum = Random().nextInt(100);
  print(randomNum);
  print("Enter a random number");

  try {
    String? val = stdin.readLineSync();

    var num = int.parse(val!);

    print('Entered value: $num');

    if (num > randomNum) {
      print("Too high");
    } else if (num < randomNum) {
      print("Too low");
    } else if (num == randomNum) {
      print("your guess is correct");
    }

    print("The random number generated was: $randomNum");
  } catch (e) {
    print("invalid input");
  }
}

// P3. Write a program that asks the user how many Fibonnaci numbers to generate and then generates them.
void Fibonnaci() {
  print("Enter the number of fibonnaci numbers to generate");

  int? num = int.parse(stdin.readLineSync()!);
}
