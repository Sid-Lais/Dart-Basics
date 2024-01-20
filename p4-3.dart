//Write following Functions
// These Functions are working on NumberSystem
// a) Decimal Number - Binary Conversion
// b) Binary Number - Decimal Conversion
// c) Decimal Number - Octal Conversion
// d) Octal number - Decimal Conversion
// e) Octal Number - Binary Conversion
// f) Decimal Number - Hexa Conversion
// g) Hexa Number - Decimal Conversion
// h) Hexa Number - Binary Conversion

import 'dart:math';

String decimalToBinary(int decimalNumber) {
  int bin = 0, i = 1;
  while (decimalNumber > 0) {
    bin = bin + (decimalNumber % 2) * i;
    decimalNumber ~/= 2;
    i *= 10;
  }
  return bin.toString();
}

int binaryToDecimal(String binaryNumber) {
  int decimalResult = 0;
  int base = 1;
  int len = binaryNumber.length;

  for (int i = len - 1; i >= 0; i--) {
    if (binaryNumber[i] == '1') {
      decimalResult += base;
    }
    base *= 2;
  }

  return decimalResult;
}

String decimalToOctal(int decimalNumber) {
  int octal = 0, i = 1;
  while (decimalNumber > 0) {
    octal = octal + (decimalNumber % 8) * i;
    decimalNumber ~/= 8;
    i *= 10;
  }
  return octal.toString();
}

int octalToDecimal(String octalNumber) {
  int decimalResult = 0;
  int base = 1;
  int len = octalNumber.length;

  for (int i = len - 1; i >= 0; i--) {
    decimalResult += int.parse(octalNumber[i]) * base;
    base *= 8;
  }

  return decimalResult;
}

String octalToBinary(String octalNumber) {
  int decimal = octalToDecimal(octalNumber);
  return decimalToBinary(decimal);
}

String decimalToHexadecimal(int decimalNumber) {
  StringBuffer hexadecimalResult = StringBuffer();

  while (decimalNumber > 0) {
    int remainder = decimalNumber % 16;
    if (remainder < 10) {
      hexadecimalResult.write(remainder.toString());
    } else {
      hexadecimalResult
          .write(String.fromCharCode('A'.codeUnitAt(0) + remainder - 10));
    }
    decimalNumber ~/= 16;
  }

  return hexadecimalResult.toString().toUpperCase();
}

int hexadecimalToDecimal(String hexadecimalNumber) {
  int decimalResult = 0;
  int len = hexadecimalNumber.length;

  for (int i = len - 1; i >= 0; i--) {
    int digit = hexadecimalNumber[i].toUpperCase().codeUnitAt(0);
    if (digit >= '0'.codeUnitAt(0) && digit <= '9'.codeUnitAt(0)) {
      decimalResult +=
          (digit - '0'.codeUnitAt(0)) * pow(16, len - 1 - i).toInt();
    } else {
      decimalResult +=
          (digit - 'A'.codeUnitAt(0) + 10) * pow(16, len - 1 - i).toInt();
    }
  }

  return decimalResult;
}

String hexadecimalToBinary(String hexadecimalNumber) {
  int decimal = hexadecimalToDecimal(hexadecimalNumber);
  return decimalToBinary(decimal);
}

void main() {
  // Example usage
  int decimalNumber = 42;
  String binaryResult = decimalToBinary(decimalNumber);
  print('Decimal to Binary: $binaryResult');

  String binaryNumber = '101010';
  int decimalResult = binaryToDecimal(binaryNumber);
  print('Binary to Decimal: $decimalResult');

  String octalResult = decimalToOctal(decimalNumber);
  print('Decimal to Octal: $octalResult');

  String octalNumber = '52';
  int decimalFromOctal = octalToDecimal(octalNumber);
  print('Octal to Decimal: $decimalFromOctal');

  String binaryFromOctal = octalToBinary(octalNumber);
  print('Octal to Binary: $binaryFromOctal');

  String hexadecimalResult = decimalToHexadecimal(decimalNumber);
  print('Decimal to Hexadecimal: $hexadecimalResult');

  String hexadecimalNumber = '2A';
  int decimalFromHexadecimal = hexadecimalToDecimal(hexadecimalNumber);
  print('Hexadecimal to Decimal: $decimalFromHexadecimal');

  String binaryFromHexadecimal = hexadecimalToBinary(hexadecimalNumber);
  print('Hexadecimal to Binary: $binaryFromHexadecimal');
}
