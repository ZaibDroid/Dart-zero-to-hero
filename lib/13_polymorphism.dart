// Polymorphism
// =============
// Poly  = many
// morph = forms
// Polymorphism = many forms



// An object that can take many forms.
// A parent class variable can hold objects of different child classes.


// Normally way:
// Doctor doc1 = Doctor(...);   // Doctor variable holds Doctor object
// Beggar beg1 = Beggar(...);   // Beggar variable holds Beggar object


// Polymorphism way:
// Person p1 = Doctor(...);   // Person variable holds Doctor object
// Person p2 = Beggar(...);   // Person variable holds Beggar object
// Person p3 = Doctor(...);   // Person variable holds Doctor object




// Abstract Method
// ================
// A method that has no body is called an abstract method.
//
//   void makeSound();   ← no body, just declared

// Abstract methods can ONLY be inside abstract classes.

// Any class that extends an abstract class MUST implement
// all abstract methods. (compulsory)



// Why?
// Abstract class is saying:
//   "I don't know HOW you will make sound,
//    but I GUARANTEE every animal WILL have makeSound()"

//   Cat  → makeSound() → Meow
//   Cow  → makeSound() → Moooo
//   Dog  → makeSound() → Woof

// Every child decides their OWN way
// but ALL are FORCED to have it


// Real Life Example:
//   Abstract class  →  Job application form
//   Abstract method →  Required fields (name, cnic)
//   Child class     →  Applicant who fills the form


// Every applicant MUST fill required fields
// Same way every child class MUST implement abstract methods





// abstract class Animal { }




abstract class Animal {
  void eat() {
    print('Eating...');
  }

  void sleep() {
    print('Sleeping...');
  }

  // abstract method → no body
  void makeSound();
  void move();
}




class Cat extends Animal {
  @override
  void makeSound() {
    print('Meow');
  }

  @override
  void move() {
    print('Cat walks');
  }
}




class Cow extends Animal {
  @override
  void makeSound() {
    print('Moooo');
  }

  @override
  void move() {
    print('Cow walks');
  }
}




class Animal2 extends Animal {
  @override
  void makeSound() {
    print('Sound...');
  }

  @override
  void move() {
    print('Moving...');
  }
}




void main() {
  // Polymorphism in action
  // Animal variable holding different child objects
  Animal a1 = Cat();
  Animal a2 = Cow();
  Animal a3 = Animal2();

  // int num1 = 3;
  // int num2 = 5;
  // int result = sum(n1, n2); // 10

  // ClsAddress address1 = ClsAddress(means, r1, n2);
  // int result = sum(n1, n2); // 10

  // List of Animals → Polymorphism
  List<Animal> animals = [a1, a2, a3];

  for (Animal animal in animals) {
    animal.makeSound();    // Each animal makes its own sound
    animal.move();         // Each animal moves in its own way
  }
}
