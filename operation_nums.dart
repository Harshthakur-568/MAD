import 'dart:io';

void main() {
  // Accepting the list of integers from the user
  print('Enter a list of numbers separated by space:');
  String? input = stdin.readLineSync();
  
  // Converting the input string into a list of integers
  List<int> numbers = input?.split(' ').map((e) => int.tryParse(e) ?? 0).toList() ?? [];

  // Call functions to perform required tasks
  print('Total: ${calculateTotal(numbers)}');
  print('Highest number: ${findHighest(numbers)}');
  print('Lowest number: ${findLowest(numbers)}');
  print('Average: ${calculateAverage(numbers)}');
  print('Median: ${calculateMedian(numbers)}');
}

// Function to calculate the total of all numbers
int calculateTotal(List<int> numbers) {
  return numbers.fold(0, (sum, num) => sum + num);
}

// Function to find the highest number in the list
int findHighest(List<int> numbers) {
  return numbers.isEmpty ? 0 : numbers.reduce((a, b) => a > b ? a : b);
}

// Function to find the lowest number in the list
int findLowest(List<int> numbers) {
  return numbers.isEmpty ? 0 : numbers.reduce((a, b) => a < b ? a : b);
}

// Function to calculate the average of all numbers
double calculateAverage(List<int> numbers) {
  if (numbers.isEmpty) return 0.0;
  return calculateTotal(numbers) / numbers.length;
}

// Function to calculate the median of the numbers
double calculateMedian(List<int> numbers) {
  if (numbers.isEmpty) return 0.0;

  numbers.sort();
  int middle = numbers.length ~/ 2;

  if (numbers.length % 2 == 1) {
    // If the list length is odd, return the middle element
    return numbers[middle].toDouble();
  } else {
    // If the list length is even, return the average of the two middle elements
    return (numbers[middle - 1] + numbers[middle]) / 2.0;
  }
}
