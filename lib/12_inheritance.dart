// Inheritance
// ============
// Creating new classes from existing classes is known as Inheritance.
// The existing class is known as Parent/Base/Super class.
// The newly created class is known as Child/Derived/Sub class.
// "extends" keyword is used to inherit a class.
// It provides code re-usability.
//
//
//       Person
//      /      \
//   Doctor   Beggar
//
//
//   Doctor is a Person
//   Beggar is a Person
//   Student is a Person



//
//   A class
//   B extends A
//   C extends B
//   D extends C



// Method @Overriding
// ==================
// When a child class provides its own implementation
// of a method that is already defined in the parent class.


// simply means  Parent class has a method → Child class makes the same method but with
// its own different work inside it

// Use @override annotation.



// "has a" relationship → Composition (using objects of other classes inside a class)




class Person {
  // data member - fields - attributes
  String name;
  String dob;
  String gender;

  // constructor
  Person({required this.name, required this.dob, required this.gender});

  // method
  void display() {
    print('Name: $name');
    print('DOB : $dob');
    print('Gender: $gender');
  }
}




class Doctor extends Person {
  String specialization;
  String hospital;

  Doctor({
    required super.name,
    required super.gender,
    required super.dob,
    required this.specialization,
    required this.hospital,
  });

  // method overriding
  @override
  void display() {
    super.display();                        // calls Person's display()
    print('SPE: $specialization');
    print('Hospital: $hospital');
  }
}




class Beggar extends Person {
  String stop;
  double dailyIncome;

  Beggar({
    required super.name,
    required super.dob,
    required super.gender,
    required this.stop,
    required this.dailyIncome,
  });

  @override
  void display() {
    super.display();
    print('Stop: $stop');
    print('Income: $dailyIncome');
  }
}




// "has a" relationship  →  Composition
class Address {
  String houseNo;
  String streetNo;
  String city;
  String country;

  Address({
    required this.houseNo,
    required this.streetNo,
    required this.city,
    required this.country,
  });

  void displayAddress() {
    print('$houseNo, $streetNo, $city, $country');
  }
}




void main() {
  Address myAddress = Address(houseNo: '9', streetNo: '8', city: 'PSH', country: 'Pak');

  Doctor doc1 = Doctor(
    name: 'Ali',
    gender: 'M',
    dob: '1st Nov',
    specialization: 'ENT',
    hospital: 'MMC',
  );

  print('****************************');

  Beggar beggar1 = Beggar(
    name: 'Shahbaz',
    dob: '3rd Mar',
    gender: 'M',
    stop: 'Pakistan',
    dailyIncome: 5000,
  );

  beggar1.display();

  print('****************************');

  // Person variable can hold Doctor or Beggar object (Upcasting)
  Person person = Doctor(name: 'Hina', gender: 'F', dob: '13 Feb', specialization: 'ENT', hospital: 'Shifa');
  Person person2 = Beggar(name: 'Bil Clinton', dob: '8 Mar', gender: 'M', stop: 'USA', dailyIncome: 5000);

  List<Person> persons = [doc1, person, beggar1, person2];

  for (Person person in persons) {
    person.display();
    print('****************************');
  }
}
