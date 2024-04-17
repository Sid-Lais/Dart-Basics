import 'dart:async';

void main() {
  // Create a StreamController
  StreamController<int> controller = StreamController<int>();

  // Generate a stream of integers from 1 to 10
  Stream<int> stream = controller.stream;

  // Transform each value to double asynchronously
  Stream<double> doubleStream = stream.asyncMap((int value) async {
    // Simulate an asynchronous transformation
    await Future.delayed(Duration(seconds: 1));
    return value * 2.0; // Double each value
  });

  // Print the result
  doubleStream.listen((double value) {
    print(value);
  });

  // Add values to the stream
  for (int i = 1; i <= 10; i++) {
    controller.add(i);
  }

  // Close the stream controller when done
  controller.close();
}
