// Fat Arrow Notation  &  Named Parameters
// =========================================
// When a function body has a single statement, we can write the entire function on one line
//
// Fat Arrow Notation:
//
//   void functionName() => singleStatement;
//   return_type functionName() => expression;   // auto-returns expression




void main() {

  // Fat Arrow examples
  printStars();
  int sq = calculateSquare(5);
  print('Square = $sq');

  // Named Parameters example
  table(number: 3, range: 5);

  printPersonalInfo(
    name: 'Bilal',
    fatherName: 'Khan',
    cnic: '2828208322882',
    dob: '1/12/2020',
  );

  //  A program that adds 2 numbers then multiply that sum by 5
  int n1 = 3;
  int n2 = 6;
  int result = sum(n1, n2); // 10
  print(result * 5);
}




//  ___Fat Arrow Functions___

// void function → single print
void printStars() => print('*******************************************');

// return function → auto-returns (number * number)
int calculateSquare(int number) => number * number;

//  sum
int sum(int x, int y) => x + y;

//  isEven
String isEven(int number) {
  if (number % 2 == 0) {
    return 'Yes';
  } else {
    return 'No';
  }
}




// ___Named Parameters___

// Named parameters use { } curly braces.
// With named parameters, ORDER does NOT matter when calling.
// Use 'required' keyword to make a parameter mandatory.

void table({required int number, required int range}) {
  for (int i = 1; i <= range; i++) {
    print('$number X $i = ${number * i}');
  }
}

void printPersonalInfo({
  required String name,
  required String fatherName,
  required String cnic,
  required String dob,
}) {
  print('Name: $name');
  print('Father Name: $fatherName');
  print('CNIC: $cnic');
  print('DOB: $dob');
}

void printList(List incomingList) {
  for (var item in incomingList) {
    print(item);
  }
}






// ___Null Safety___

// product() will return null if either number is null

int? product(int? number1, int? number2) {
  if (number1 == null) {
    print('Please provide number 1');
    return null;
  }
  if (number2 == null) {
    print('Please provide number 2');
    return null;
  }
  return number1 * number2;
}
