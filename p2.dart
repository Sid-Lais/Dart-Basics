void main() {
  // ReverseListFunction();
  //ListFunctions();
  sets();
}

// 1. Create a list variable and store 6 three digit integer values in it. Create another list which contains reverse elements of this list.

ReverseListFunction() {
  List<int> l1 = [213, 423, 523, 435, 768, 584];
  print(l1);

  var l2 = l1.reversed;
  var revList = new List.from(l2);
  print(revList);
}

// 2. Use the following List functions in the above list:
//     First
//     isEmpty
//     isNotEmpty
//     Length
//     Last
//     Reverse
//     Single
//     add()
//     addAll()
//     insert()
//     insertAll()
//     replaceRange()
//     remove()
//     removeAt()
//     removeLast()
//     removeRange()

ListFunctions() {
  List<String> names = ['peter', 'max', 'sam', 'john', 'bill', 'zorawar'];

  //--------------'First' Function------------------
  //can be used to change tha value of the first element in the list
  names.first = 'pan';
// also can be used to print the first element in the list
  print(names.first);

// --------------------isEmpty function--------------------
  print(names.isEmpty); //will give false and true val

  //--------------------isNotEmpty function--------------------
  print(names.isNotEmpty); //will give false and true val

//--------------------Length function--------------------
  print(names.length); //returns length of list

//--------------------Last function--------------------
  names.last = 'munawar'; // change the last element in the list

  print(names.last); //prints the last element in the list

//--------------------Single function--------------------
  List<String> singleName = ['Zoe'];
  print(singleName.single);
  // throws a StateError if the list has multiple elements
  // put this code in a try catch block to execute

//--------------------Add()--------------------
  names.add('Brody');
  print(names);

//--------------------addAll()--------------------
  names.addAll(['Stacy', 'Joy']);
  print(names);

//--------------------insert()--------------------
  names.insert(2, 'Hunter'); //insert value at the specific index
  print(names);

//--------------------insertAll()--------------------
  names.insertAll(4, [
    'Jamie',
    'Robb'
  ]); //insert multuple value in the list at the specific index
  print(names);

//--------------------replaceRange()--------------------
  names.replaceRange(
      2, 4, ['Finn', 'jack']); //replaces a range of index values and add items
  print(names);

//--------------------remove()--------------------
  names.remove('Finn'); //removes the value matching from the list
  print(names);
  //removeAt()--> removes the value at the specific index

//--------------------removeLast()--------------------
  names.removeLast(); //removes the last value from the list
  print(names);

//--------------------removeAll()--------------------
  names.removeRange(3, 5);
  print(names); //wont remove the value at index 5
}

// 3. Create the following set variables and perform the following operations:
//     var a = <int>{10,11,12,13,14,15};
//     var b = <int>{12,18,29,43};
//     var c = <int>{2,5,10,11,32};
//     a. Union of a, b and c
//     b. Intersection of a and b
//     c. Difference of b and c

sets() {
//sets are the data structures that can contain only the unique values just like in maths
//only prints unique values

  var a = <int>{10, 11, 12, 13, 14, 15};
  var b = <int>{12, 18, 29, 43};
  var c = <int>{2, 5, 10, 11, 32};

  print(a.union(b)); //union of a and b

  print(b.intersection(a)); //intersection of b and a

  print(c.difference(a)); //difference of c and a
}
