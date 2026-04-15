// Variables & Data Types
// ========================


// Variable = a named memory location (RAM) where data is stored
// Syntax:   dataType variableName = value;
// Style:    use camelCasing  →  totalStudents, semesterFee

void main() {
  // NUMBER TYPES
  int totalStudents = 44;         // whole numbers only
  double gpa = 3.3;               // decimal numbers
  num anything = 3;               // can hold BOTH int and double

  print('Students : $totalStudents');
  print('GPA      : $gpa');
  print('Anything : $anything');




  // STRING — sequence of characters
  String uniName = 'UET Mardan';
  String address = 'House # 33, Street # 2, Mardan';
  print(uniName);
  print(address);




  // BOOL — true or false
  bool feePaid     = true;
  bool isVaccinated = false;
  print('Fee Paid: $feePaid');



  // var — Dart figures out the type for you (Type Inference)
  var shouldProceed = true;   // Dart knows this is bool
  var score = 99;             // Dart knows this is int
  print('Score: $score');




  // dynamic — can CHANGE type anytime
  dynamic variable = true;
  print(variable.runtimeType);  // bool
  variable = 88;
  print(variable.runtimeType);  // int
  variable = 99.9;
  print(variable.runtimeType);  // double





  // const — value NEVER changes after declaration
  const double pi = 3.14;
  print('Pi = $pi');

  // pi = 888.88;  //ERROR: cannot change a const value
}