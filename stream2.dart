import 'dart:async';

// Simulated function to fetch data asynchronously
Future<String> fetchDataAsync(String url) async {
  // Simulate delay of 1 second
  await Future.delayed(Duration(seconds: 1));
  // Simulate fetching data from URL (replace with actual implementation)
  return "Data fetched from $url";
}

// Async generator function to fetch data from a list of URLs
Stream<String> fetchData(List<String> urls) async* {
  for (var url in urls) {
    // Fetch data asynchronously from each URL
    var data = await fetchDataAsync(url);
    yield data; // Yield the fetched data
  }
}

// Test the fetchData function
void main() {
  // List of URLs to fetch data from
  List<String> urls = [
    "https://example.com/api/data1",
    "https://example.com/api/data2",
    "https://example.com/api/data3"
  ];

  // Fetch data from each URL and print the contents
  fetchData(urls).listen((data) {
    print(data); // Print the fetched data
  });
}
