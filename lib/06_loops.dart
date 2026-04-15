import 'dart:io';

// Loops
// =======
// A loop is used to REPEAT a block of code many times.
// Without loops → if you want to print 1 to 100, you'd write
// print() 100 times. With a loop → just 3 lines!



// Loops are used for:  Repetition / Iteration



// 3 Types of Loops in Dart:
//   1. for loop
//   2. while loop
//   3. do while loop



// Every loop has 4 parts:
//   1. Initialization  → set the starting value
//   2. Condition       → keep looping as long as this is true
//   3. Increment/Dec   → update the value each time
//   4. Body            → the code that runs each time





void main() {

  // These are the functions which discuss in functions topic
  forLoopExamples();
  whileLoopExamples();
  doWhileLoopExamples();
  practicePrograms();
}




// 1. FOR LOOP
// ============
// Best when you KNOW how many times to repeat.

// Syntax:
//   for( initialization ; condition ; inc/dec ) {
//     // body
//   }

// How it works step by step:
//   Step 1 → initialization runs ONCE at the start
//   Step 2 → condition is checked: if true → run body
//   Step 3 → inc/dec runs
//   Step 4 → go back to Step 2
//   Step 5 → when condition is false → loop ends

void forLoopExamples() {
  print('\n ___FOR LOOP___ ');

  // Example 1: Print 1 to 5
  print('- Print 1 to 5 -');
  for (int i = 1; i <= 5; i++) {
    print(i);
  }

  // Example 2: Print even numbers from 1 to 20
  print('- Even numbers 1 to 20 -');
  for (int i = 1; i <= 20; i++) {
    if (i % 2 == 0) {
      print(i);
    }
  }

  // Example 3: Print Flutter ten times
  print('- Flutter x10 -');
  for (int i = 1; i <= 10; i++) {
    print('Flutter');
  }

  // Example 4: for-in loop (simpler, for Lists)
  // We will cover this more in Lists topic
  List<String> fruits = ['Apple', 'Mango', 'Banana'];
  print('- for-in loop -');
  for (String fruit in fruits) {
    print(fruit);
  }
}







// 2. WHILE LOOP
// ===============
// Best when you DON'T KNOW how many times to repeat.
// It keeps looping as long as the condition stays true.

// PRE-TESTED loop → condition is checked BEFORE running the body.
// If condition is false from the start → body NEVER runs.



// Syntax:
//   initialization;
//   while( condition ) {
//     // body
//     inc/dec;
//   }



void whileLoopExamples() {
  print('\n___WHILE LOOP___');

  // Example 1: Print 1 to 5 with while loop
  print('- Print 1 to 5 -');
  int i = 1;              // initialization
  while (i <= 5) {        // condition
    print(i);             // body
    i++;                  // increment
  }



  // Example 2: Keep asking user until they say "no"

  /*
  String choice = 'yes';
  while (choice == 'yes') {
    stdout.write('Enter first number : ');
    int n1 = int.parse(stdin.readLineSync()!);
    stdout.write('Enter second number : ');
    int n2 = int.parse(stdin.readLineSync()!);
    print('Sum = ${n1 + n2}');
    stdout.write('Do you want more additions(yes/no)? ');
    choice = stdin.readLineSync()!;
  }
  print('Thank You for using our app');
  */



  // Example 3: Count down from 10 to 1
  print('- Countdown -');
  int count = 10;
  while (count >= 1) {
    print(count);
    count--;   // decrement
  }
  print('End!');
}







// 3. DO WHILE LOOP
// =================
// POST-TESTED loop → body runs FIRST, condition checked AFTER.
// This means the body will ALWAYS run at least ONE time,
// even if the condition is false from the beginning.



// Syntax:
//   initialization;
//   do {
//     // body
//     inc/dec;
//   } while( condition );



// KEY DIFFERENCE from while loop:
//   while     → checks condition first → might never run
//   do-while  → runs first → then checks → always runs once



void doWhileLoopExamples() {
  print('\n___DO WHILE LOOP___');

  // Example 1: Print 1 to 5
  print('- Print 1 to 5 -');
  int i = 1;
  do {
    print(i);
    i++;
  } while (i <= 5);

  // Example 2: Show that do-while runs even when condition is false
  print('- Runs at least once -');
  int x = 100;  // condition (x <= 5) is already false
  do {
    print('This ran once even though condition was false!');
    x++;
  } while (x <= 5);   // false → stops, but body already ran once
}




// PRACTICE PROGRAMS
// ==================

void practicePrograms() {
  print('\n ---PRACTICE---');

  // 1. Multiplication Table

  // stdout.write('Enter a number : ');
  // int number = int.parse(stdin.readLineSync()!);

  int number = 7; // hard coded for demo
  print('- Table of $number -');
  for (int i = 1; i <= 10; i++) {
    print('$number X $i = ${number * i}');
  }




  // 2. Sum of first N numbers
  print('-- Sum of 1 to 10 --');
  int sum = 0;
  for (int i = 1; i <= 10; i++) {
    sum = sum + i;
  }
  print('Sum = $sum');





  // 3. Factorial of a number
  // 5! = 5 x 4 x 3 x 2 x 1 = 120
  print('-- Factorial of 5 --');
  int n = 5;
  int factorial = 1;
  for (int i = 1; i <= n; i++) {
    factorial = factorial * i;
  }
  print('$n! = $factorial');




  
  // 4. Fibonacci series: 0 1 1 2 3 5 8 13 21 34 ...
  // Each number = sum of the two before it
  print('-- Fibonacci (first 10) --');
  int f0 = 0, f1 = 1;
  print(f0);
  print(f1);
  for (int i = 0; i < 8; i++) {
    int next = f0 + f1;
    print(next);
    f0 = f1;
    f1 = next;
  }
}