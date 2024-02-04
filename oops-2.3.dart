// Design a Dart interface named BankAccount with methods deposit, withdraw, and getBalance. Create a Dart class named Customer with properties name and address. Extend the Customer class to create two subclasses: SavingsAccount and CheckingAccount. Implement the BankAccount interface in both subclasses. The SavingsAccount class should have an additional method calculateInterest and a property interestRate. The CheckingAccount class should have an additional method deductFee and a property transactionFee. Implement constructors for each class to initialize their properties.

// Interface: BankAccount
abstract class BankAccount {
  void deposit(double amount);
  void withdraw(double amount);
  double getBalance();
}

// Base class
class Customer {
  String name;
  String address;

  // Constructor for Customer
  Customer(this.name, this.address);
}

// Subclass of Customer: SavingsAccount
class SavingsAccount extends Customer implements BankAccount {
  double balance;
  double interestRate;

  // Constructor for SavingsAccount
  SavingsAccount(String name, String address, this.balance, this.interestRate)
      : super(name, address);

  @override
  void deposit(double amount) {
    balance += amount;
    print('Deposit successful. New balance: $balance');
  }

  @override
  void withdraw(double amount) {
    if (amount <= balance) {
      balance -= amount;
      print('Withdrawal successful. New balance: $balance');
    } else {
      print('Insufficient funds. Withdrawal failed.');
    }
  }

  @override
  double getBalance() {
    return balance;
  }

  // Additional method for calculating interest
  void calculateInterest() {
    double interest = balance * (interestRate / 100);
    print('Interest calculated: $interest');
    deposit(interest);
  }
}

// Subclass of Customer: CheckingAccount
class CheckingAccount extends Customer implements BankAccount {
  double balance;
  double transactionFee;

  // Constructor for CheckingAccount
  CheckingAccount(
      String name, String address, this.balance, this.transactionFee)
      : super(name, address);

  @override
  void deposit(double amount) {
    balance += amount;
    print('Deposit successful. New balance: $balance');
  }

  @override
  void withdraw(double amount) {
    if (amount <= balance) {
      balance -= amount;
      print('Withdrawal successful. New balance: $balance');
    } else {
      print('Insufficient funds. Withdrawal failed.');
    }
  }

  @override
  double getBalance() {
    return balance;
  }

  // Additional method for deducting transaction fee
  void deductFee() {
    if (balance >= transactionFee) {
      balance -= transactionFee;
      print('Transaction fee deducted. New balance: $balance');
    } else {
      print('Insufficient funds to deduct transaction fee.');
    }
  }
}

void main() {
  // Example usage:
  SavingsAccount savingsAccount =
      SavingsAccount('John Doe', '123 Main St', 1000.0, 2.5);
  savingsAccount.deposit(500.0);
  savingsAccount.withdraw(200.0);
  print('Current Balance: ${savingsAccount.getBalance()}');
  savingsAccount.calculateInterest();

  CheckingAccount checkingAccount =
      CheckingAccount('Jane Smith', '456 Oak St', 1500.0, 5.0);
  checkingAccount.deposit(100.0);
  checkingAccount.withdraw(300.0);
  print('Current Balance: ${checkingAccount.getBalance()}');
  checkingAccount.deductFee();
}
