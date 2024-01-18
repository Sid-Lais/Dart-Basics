//String vs String buffer
//String are immutable in java when the value is changed a new string is created with the same variable name

void main(List<String> args) {
  //Set<String> cities = {};//use {} with set (takes unique value and perfom math functions eg union)

  List<String> cities = [
    'Delhi',
    'Gurugram',
    'Bangalore'
  ]; //always use [] with string

  String finalCities = '';

  for (String city in cities) {
    //advance for loop same as declaring i=0;
    finalCities += city + ' ';
    print(identityHashCode(
        finalCities)); //new hashcode gets created in every iteration
    //(shows that a new string is created at every iteration, hence new hashcode)
  }
  print('List of cities:  $finalCities');

  StringBuffer buffer = new StringBuffer(); //new keyword is optional

  for (String city in cities) {
    buffer.write(city + ' ');
    print(identityHashCode(finalCities));
  }
}
