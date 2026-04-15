// Functions
// ===========
// A function is a block of code that performs a SPECIFIC TASK.

// Why use functions?
//   → Code Re-usability: write once, call many times
//   → Cleaner, organized code
//   → Easier to fix bugs (fix in one place)


// A function can:
//   → Receive values (input) called ARGUMENTS / PARAMETERS
//   → Return a value (output / result)

// 2 Steps:
//   1. Function DEFINITION  — write the function
//   2. Function CALLING     — use the function




// FUNCTION DEFINITION SYNTAX:

//   returnDataType functionName( arguments ) {
//     // actual logic here
//   }




// VOID functions — do NOT return a value
void printStars() {
  print('*************************************');
}


void calculateSquare(int number) {
  int square = number * number;
  print('Square = $square');
}


void sum(int x, int y) {
  print('Sum = ${x + y}');
}





// RETURN functions — RETURN a value back to the caller
int add(int x, int y) {
  return x + y;   // sends the result back
}


String isEven(int number) {
  return (number % 2 == 0) ? 'Even' : 'Odd';
}






// NAMED PARAMETERS — you pass values by name, not position

// Wrap in { } to make them named
void printPersonalInfo({
  required String name,
  required String fatherName,
  String? mobile,          // nullable — not required
  String dob = '1/1/1917', // default value
}) {
  print('Name $name');
  print('Father Name $fatherName');
  print('Mobile $mobile');
  print('DOB $dob');
}








// FAT ARROW NOTATION  =>
// When a function has ONE statement, use => instead of { }
void printStars2() => print('*************************************');
int calculateSquare2(int number) => number * number;
String isEvenArrow(int number) => (number % 2 == 0) ? 'Yes' : 'No';








// BOSS — main() calls everything
void main() {
  print('Main starts');

  // Calling void functions
  printStars();
  calculateSquare(7);
  calculateSquare(9);
  calculateSquare(5);
  sum(4, 8);
  sum(8773873, 883873873);
  printStars();

  print('Main Ends');



  // Calling return functions
  int result = add(10, 20);
  print('Add result: $result');

  // We can also use the returned value directly
  print(add(3, 4));           // 7
  print(isEven(10));          // Even




  // Named parameters
  printPersonalInfo(
    name: 'Khan',
    fatherName: 'Dad Khan',
    mobile: '03001234567',
    dob: '1/12/2000',
  );




  // Fat arrow
  printStars2();
  print(calculateSquare2(6));  // 36




  // FUNCTIONS WITH LIST PARAMETER
  void printList(List incomingList) {
    for (var item in incomingList) {
      print(item);
    }
  }

  printList([1, 2, 3, 4, 5]);
  printList(['Flutter', 'Dart', 'Android']);





  // FUNCTION THAT VALIDATES / GUARDS
  int product(int? number1, int? number2) {
    if (number1 == null) {
      print('Please provide number 1');
      return 0;
    }
    if (number2 == null) {
      print('Please provide number 2');
      return 0;
    }
    return number1 * number2;
  }

  print(product(3, 5));        // 15
  print(product(null, 5));     // Please provide number 1
}



