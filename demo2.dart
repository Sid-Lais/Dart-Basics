void main(List<String> args) {
  // multiple arguments can be passed when running the dart file in console, at that moment list of strings are utilised
  //dynamic in nature can have any size created at run time

// object creation is done at run time when the heap memory is allocated
  // const and final keywords

//const
// const also called compiled time constants
  const pi =
      3.14; // fixed and cannot be changed, will throw compile time error if changed

  //final (genrally used during api calls to keep the data constant, obj creation)
  //used as runtime constants, values are assigned at runtime(program under execution)

  final a = getName();

  // print(args);

  // constant list
  const list = [1, 2, 3];

  // list.add(4);
  print(list);
  // no error in compile time but will show error during execution, value cannot be changed or deleted
  //immutable

  final list2 = const [9, 8, 7]; //lists created with final are mutable
  // if const word is added it cannot be changed,rather than changing everything add const keyword to make it immutable.
  list2.add(6);
  //use case: to keep api keys constant once we get them.

  print(list2);

  list2.removeAt(1); //removes the index from the list
  list2.remove(7); //removes the element value from the list
  print(list2);
}

String getName() {
  return "Max";
}
