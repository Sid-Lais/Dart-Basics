void main() {
  print("Hello World");

  //variable decalration
  int x = 100;
  print(x);

//interpolation decalration
//rather than print('the value is: '+x);
  print('the value of x is: $x');

  int y = 50;

  //interpolation for expressions
  //rather than print('the value is: '+ (x+y) );
  print('the sum of the  x+y values is: ${x + y}');

  //var keyword for variable creation

  var z = 100; //type inferencing and decide the value at the run time
  print('type of z is: ${z.runtimeType}');

  //z = 'sanidhya';
  //datatype cannot be changed after decalation using var keyword

//datatype can be changed after decalration using dynamic keyword
  dynamic w = 'sanidhya';
  print('type of w is: ${w.runtimeType}');

  w = 100;

  print('the updated datatype is: ${w.runtimeType}');

  //datatypes available in dart:
  // int, double, bool, String, Null, list, set, map

  String name = "John Wick";
  print(name);
  print("");

  //multi line string decalration:

  String address = """
Max payne
Rdr2
Cyberpunk 
""";

  print(address);

  //toString method avialable to convert any datatype to string

  int age = 21;

  String ageUpdated = age.toString();

  print(ageUpdated.runtimeType);

  // to convert string to int

  String randomVal = '69';
  int value = int.parse(randomVal);
  print(value.runtimeType);

  //num can take both decimal and normal values
  num d = 100;
  num d1 = 100.69;
}
