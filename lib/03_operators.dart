// Operators
// ============


// Operator = special symbol that performs an operation on values
// The values it works on are called OPERANDS
// Example:  5 + 7  →  5 and 7 are operands, + is operator



void main() {

  // ARITHMETIC OPERATORS  (+, -, *, /, ~/, %)
  int num1 = 17;
  int num2 = 5;

  print(num1 + num2);   // 22  — Addition
  print(num1 - num2);   // 12  — Subtraction
  print(num1 * num2);   // 85  — Multiplication
  print(num1 / num2);   // 3.4 — Division (decimal result)
  print(num1 ~/ num2);  // 3   — Integer Division (no decimal)
  print(num1 % num2);   // 2   — Modulus = REMAINDER





  // RELATIONAL / COMPARISON OPERATORS
  // These always give true or false

  print(7 + 5 == 12);   // true   (equal to)
  print(7 > 15);        // false  (greater than)
  print(5 >= 5);        // true   (greater or equal)
  print(5 != 5);        // false  (not equal)
  print(5 < 10);        // true   (less than)




  // ASSIGNMENT OPERATOR  ( = )
  int x = 10;   // assigns 10 to x
  print(x);




  // UNARY OPERATORS  (++ and --)
  int counter = 0;
  counter++;    // same as counter = counter + 1
  print(counter);   // 1
  counter--;    // same as counter = counter - 1
  print(counter);   // 0





  // LOGICAL OPERATORS  (&&, ||, !)
  bool a = true;
  bool b = false;
  print(a && b);   // false       — AND: both must be true
  print(a || b);   // true        — OR: at least one must be true
  print(!a);       // false       — NOT: flips the value






  // PRACTICE: Dollar to Rupee converter
  double dollars = 5000;
  double rate = 287.88;
  double rupees = dollars * rate;
  print('Total Dollars: \$${dollars}');
  print('Conversion Rate: $rate');
  print('Resulting Rupees: $rupees');
}