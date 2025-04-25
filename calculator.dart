import 'dart:io';

void main() {
  print("Enter first number:");
  double num1 = double.parse(stdin.readLineSync()!);

  print("Enter second number:");
  double num2 = double.parse(stdin.readLineSync()!);

  print("Choose operation: +, -, *, /");
  String op = stdin.readLineSync()!;

  double result;

  switch (op) {
    case '+':
      result = num1 + num2;
      break;
    case '-':
      result = num1 - num2;
      break;
    case '*':
      result = num1 * num2;
      break;
    case '/':
      if (num2 == 0) {
        print("Cannot divide by zero");
        return;
      }
      result = num1 / num2;
      break;
    default:
      print("Invalid operation");
      return;
  }

  print("Result: $result");
}
