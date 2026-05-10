// Assignment: Bank Account Management System in Dart
// =====================================================


// Problem Statement:
// A bank needs a simple program to manage customer accounts.
// Each customer has a bank account that stores:
//   - Account holder's name
//   - Account number
//   - Current balance
//
// The bank system should allow:
//   - Depositing money
//   - Withdrawing money
//   - Displaying account details
//
// Objective:
//   - Understand Object-Oriented Programming (OOP)
//   - Practice Classes and Objects
//   - Practice Constructors
//   - Practice Methods and basic program logic in Dart




class BankAccount {
  // attributes (data members)
  String accountHolder;
  String accountNumber;
  double balance;

  // constructor
  BankAccount({
    required this.accountHolder,
    required this.accountNumber,
    required this.balance,
  });

  // deposit(amount) → Adds the specified amount to the account balance
  void deposit(double amount) {
    balance += amount;
    print('Deposited: $amount');
    print('New Balance: $balance');
  }

  // withdraw(amount) → Deducts the specified amount if sufficient funds available
  void withdraw(double amount) {
    if (amount > balance) {
      print('Error: Insufficient funds! Available balance: $balance');
    } else {
      balance -= amount;
      print('Withdrawn: $amount');
      print('Remaining Balance: $balance');
    }
  }

  // displayAccountInfo() → Displays account holder name, number, and balance
  void displayAccountInfo() {
    print('****************************');
    print('Account Holder: $accountHolder');
    print('Account Number: $accountNumber');
    print('Balance       : $balance');
    print('****************************');
  }
}




void main() {
  // Create a bank account object
  BankAccount account1 = BankAccount(
    accountHolder: 'Ali Khan',
    accountNumber: 'PK-001-2024',
    balance: 50000,
  );

  // Display initial info
  account1.displayAccountInfo();

  // Deposit money
  print('\n--- Depositing 10,000 ---');
  account1.deposit(10000);

  // Withdraw money
  print('\n--- Withdrawing 5,000 ---');
  account1.withdraw(5000);

  // Try to withdraw more than balance
  print('\n--- Withdrawing 100,000 (insufficient) ---');
  account1.withdraw(100000);

  // Display final info
  print('\n--- Final Account Info ---');
  account1.displayAccountInfo();

  // Second account
  BankAccount account2 = BankAccount(
    accountHolder: 'Hina Butt',
    accountNumber: 'PK-002-2024',
    balance: 25000,
  );

  account2.displayAccountInfo();
  account2.deposit(5000);
  account2.withdraw(8000);
  account2.displayAccountInfo();
}


// you can try to make it take data from the user