import 'dart:io';



// Decision making lets the program choose what to do
// based on a condition (true or false).

// Types:
//   1. if
//   2. if else
//   3. multiple if
//   4. nested if
//   5. if else if ... else ladder
//   6. switch
//   7. conditional / ternary operator ( ? : )




void main() {

  // 1. IF STATEMENT — runs block ONLY if condition is true
  stdout.write('Enter a number less than 10 : ');
  int number = int.parse(stdin.readLineSync()!);

  if (number < 10) {
    print('Shaabaash!');
    print('Good');
  }
  print('End of program');





  // 2. IF ELSE — one path for true, another for false
  if (number % 2 == 0) {
    print('$number is Even');
  } else {
    print('$number is Odd');
  }





  // 3. IF ELSE IF ... ELSE LADDER — many conditions
  stdout.write('Enter month number : ');
  int month = int.parse(stdin.readLineSync()!);

  if (month == 1) {
    print('January');
  } else if (month == 2) {
    print('February');
  } else if (month == 3) {
    print('March');
  } else if (month == 12) {
    print('December');
  } else {
    print('Invalid month number');
  }






  // 4. SWITCH — cleaner way to select one of many actions

  // Syntax:
  //   switch(variable) {
  //     case value1: ...; break;
  //     case value2: ...; break;
  //     default:    ...;
  //   }

  switch (month) {
    case 1:
      print('January');
      break;
    case 2:
      print('February');
      break;
    case 3:
      print('March');
      break;
    default:
      print('Invalid');
  }







  // 5. TERNARY OPERATOR  ? :

  // Syntax:  (condition) ? doIfTrue : doIfFalse
  // Works exactly like if-else but in ONE line

  String result = (number % 2 == 0) ? 'Even' : 'Odd';
  print(result);





  
  // Find larger of two numbers using ternary
  int a = 33, b = 88;
  int larger = (a > b) ? a : b;
  print('Larger number is: $larger');
}