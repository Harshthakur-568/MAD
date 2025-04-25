import 'dart:io';

void main() {
  // Accepting the sentence as input
  print('Enter a sentence:');
  String sentence = stdin.readLineSync() ?? '';

  // Call functions to perform required tasks
  print('Number of characters: ${countCharacters(sentence)}');
  print('Number of words: ${countWords(sentence)}');
  print('Reversed sentence: ${reverseSentence(sentence)}');
}

// Function to count the number of characters
int countCharacters(String sentence) {
  return sentence.length;
}

// Function to count the number of words
int countWords(String sentence) {
  List<String> words = sentence.split(RegExp(r'\s+'));
  return words.length;
}

// Function to reverse the sentence
String reverseSentence(String sentence) {
  return sentence.split('').reversed.join('');
}
