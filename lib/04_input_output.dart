// This library is used for INPUT and OUTPUT operations
// Example: taking input from user (stdin) and printing output
import 'dart:io';

// This library provides MATHEMATICAL functions
// Example: random numbers, square root, power, etc.
import 'dart:math';





// A program has 3 stages:
//   Input  →  Processor  →  Output


// To take user input in Dart we use:
//   stdin.readLineSync()
//   It always returns String? (nullable String)
//   We add ! to say "I am sure it is not null"




void main() {


  // BASIC STRING INPUT
  stdout.write('Enter your name : ');   // no new line

  String? name = stdin.readLineSync();
  // readLineSync() → Reads a full line of text entered by the user from the keyboard
  // It waits (pauses program) until the user presses ENTER
  // Returns the input as a String
  // The '?' means the value can be null (if no input is given)

  print('Welcome $name');




  // INTEGER INPUT

  // stdin always gives String → we convert to int using int.parse()
  stdout.write('Enter a number : ');
  int number = int.parse(stdin.readLineSync()!);
  int square = number * number;
  print('Square of $number is $square');




  // DOUBLE INPUT

  // For decimal numbers use double.parse()
  stdout.write('Enter radius : ');
  double radius = double.parse(stdin.readLineSync()!);
  double area = pi * radius * radius;
  print('Area = ${area.toStringAsFixed(2)}');  // 2 decimal places





  // TAKING TWO NUMBERS AND ADDING THEM
  stdout.write('Enter first number : ');
  int n1 = int.parse(stdin.readLineSync()!);

  stdout.write('Enter second number : ');
  int n2 = int.parse(stdin.readLineSync()!);

  int sum = n1 + n2;
  print('Sum = $sum');
}