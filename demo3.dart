import 'dart:io';

void main(List<String> args) {
  print('Enter your name:');

  String? name = stdin.readLineSync();
  // readLineByteSync only reads the byte value means take the first character
//?--> means it can accept null value
//!--> means the value can never be null

  print("Entered name is : $name");

  print("Enter your roll number:");

  var roll = int.parse(stdin.readLineSync().toString());

  print("Your roll number is : $roll");

// alternative to print value

  stdout.write(roll);
}
