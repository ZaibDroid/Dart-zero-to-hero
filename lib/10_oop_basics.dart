// OOP - Object Oriented Programming
// ===================================
// OOP is a Programming Paradigm
// C Language uses Procedural Programming
// Dart / Flutter uses Object Oriented Programming

// Flutter use   →  Widgets
// React Native use  →  Components



// OOP Features:
//   class
//   object
//   constructor
//   inheritance
//   polymorphism




// 1. CLASS
// =========
// In order to create an object we first need to have a class.
// A class is a collection of variables and functions.
// Variables are called Data Members (Fields / Attributes)
// Functions are called Methods

// A Class is used to create User Defined Data Types

// Syntax:
// class ClassName
// {
//    // variables (data members)
//
//    // functions (methods)
// }




import 'dart:math';

class Student {
  // data members - fields - attributes
  late String name;
  late int rollNumber;
  late String course;
  String? mobileNumber;   // ? means optional (nullable)

  // default constructor
  // Student(){
  //   print('Student Created');
  // }

  // parameterized constructor
  Student(String n, String r, String c, String? m) {
    name = n;
    rollNumber = int.parse(r);
    course = c;
    mobileNumber = m;
  }

  // method
  void display() {
    print('Name: $name');
    print('Roll Number: $rollNumber');
    print('Course: $course');
    print('Mobile: $mobileNumber');
  }
}




void main() {
  // Creating objects of Student class
  Student ali = Student('Ali Khan', '1', 'Game Dev', null);  // default constructor
  ali.display();

  print('****************************');

  Student hina = Student('Hina', '2', 'UI/UX', null);
  hina.display();
}
