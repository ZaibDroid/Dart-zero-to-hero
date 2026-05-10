// Constructor
// ============
// A special function/method having same name as class name.
// It is used to instantiate / initialize an object.

// Types:
//   1. Default Constructor     → no parameters
//   2. Parameterized Constructor → takes parameters
//   3. Named Constructor       → named variant of a constructor


// "this" Keyword
// ===============
// "this" refers to the CURRENT OBJECT of the class.
// It is used to access the data members of the current object.
//
// When do we USE "this"?
//
//   CASE 1 → Parameter name is SAME as data member name
//            Without "this", Dart gets confused which one you mean.
//
//            Example:
//              late String name;           ← data member
//              Student(String name) {      ← parameter, same name!
//                this.name = name;         ← this.name = data member
//              }                              name      = parameter
//
//   CASE 2 → Different parameter names (n, rn, c, m)
//            "this" is optional here, but can still be used.
//            Without "this" it also works fine.
//
//            Example:
//              late String name;
//              Student(String n) {
//                name = n;     ← works fine, no confusion
//              }

//
// class Student {
//   // data members - fields - attributes
//   late String name;
//   late int rollNumber;
//   late String course;
//   String? mobileNumber;
//
//
//   // ─────────────────────────────────────────────────────
//   // CASE 2 → Different parameter names (n, rn)
//   //          "this" is optional here
//   //          Dart knows: name (left) = data member, n (right) = parameter
//   // ─────────────────────────────────────────────────────
//   Student(String n, int rn, String c, String? m) {
//     this.name = n;         // this.name  → data member of the class
//     this.rollNumber = rn;  //         n  → parameter value coming in
//     this.course = c;
//     this.mobileNumber = m;
//
//     // Same thing WITHOUT "this" → also works fine here
//     // name         = n;
//     // rollNumber   = rn;
//     // course       = c;
//     // mobileNumber = m;
//   }
//
//   void display() {
//     print('Name: $name');
//     print('Roll Number: $rollNumber');
//     print('Course: $course');
//     print('Mobile: $mobileNumber');
//   }
// }
//



//
//
// // ─────────────────────────────────────────────────────
// // CASE 1 → Parameter name is SAME as data member name
// //          "this" is REQUIRED here to remove confusion
// // ─────────────────────────────────────────────────────
// class Teacher {
//   late String name;
//   late String subject;
//
//   // Parameter names are SAME as data member names
//   Teacher(String name, String subject) {
//     // WITHOUT "this" → name = name means parameter = parameter (bug!)
//     // WITH "this"    → this.name = name means data member = parameter ✓
//     this.name = name;
//     this.subject = subject;
//   }
//
//   void display() {
//     print('Teacher: $name | Subject: $subject');
//   }
// }
//
//
//
//
// // ─────────────────────────────────────────────────────
// // SHORTCUT → Dart allows even shorter syntax
// //            Write "this.name" directly in constructor parameters
// //            No need to write body at all!
// // ─────────────────────────────────────────────────────
// class Course {
//   late String title;
//   late int duration;
//
//   // Dart auto-assigns: this.title = title, this.duration = duration
//   Course(this.title, this.duration);
//
//   void display() {
//     print('Course: $title | Duration: $duration months');
//   }
// }
//
//






// Constructor with different type of parameters:

//   name
//   rollNumber
//   course
//   mobileNumber




class Student {
  // data members - fields - attributes
  late String name;
  late int rollNumber;
  late String course;
  String? mobileNumber;

  // Parameterized Constructor
  // Positional Parameters → order matters
  Student(String n, int rn, String course, String? mobileNumber) {
    this.name = n;
    this.rollNumber = rn;
    this.course = course;
    this.mobileNumber = mobileNumber;
  }

  // method
  void display() {
    print('Name: $name');
    print('Roll Number: $rollNumber');
    print('Course: $course');
    print('Mobile: $mobileNumber');
  }
}




// Class Student
// A class that stores different types of parameters

class GlassStudent {
  // data members - fields - attributes
  late String name;
  late int rollNumber;
  late String course;
  String? mobileNumber;

  // Named Parameters Constructor
  // Named parameters use {} → order does NOT matter
  GlassStudent({
    required String name,
    required int rollNumber,
    String course = 'Mobile App',   // default value
    String? mobileNumber,
  }) {
    this.name = name;
    this.rollNumber = rollNumber;
    this.course = course;
    this.mobileNumber = mobileNumber;
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
  // Positional parameters → order matters
  Student ali = Student('Ali Khan', 90, 'Mobile App', null);
  ali.display();

  print('****************************');

  // Named parameters → order does NOT matter
  GlassStudent s1 = GlassStudent(name: 'Hina', rollNumber: 88, course: 'Mobile App', mobileNumber: null);
  s1.display();

  print('****************************');
}
