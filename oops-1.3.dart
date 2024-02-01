//Define a Dart class named BankAccount to represent bank accounts.
// Implement a constructor with a required parameter for the account holder's name and
// optional named parameters for account number, balance, and account type.
// Ensure that the account number is initialized to a unique value if not provided, and
// the balance defaults to 0.0. Include methods to deposit, withdraw, and display account details.

class BankAccount {
  String accountHolderName;
  late int accountNumber;
  late double balance;
  late String accountType;

  // Constructor
  BankAccount(this.accountHolderName,
      {int? accountNumber, double? balance, String? accountType}) {
    // Assign a unique account number if not provided
    this.accountNumber = accountNumber ?? DateTime.now().millisecondsSinceEpoch;
    this.balance = balance ?? 0.0;
    this.accountType = accountType ?? 'Savings';
  }

  // Method to deposit money
  void deposit(double amount) {
    if (amount > 0) {
      balance += amount;
      print('Deposit successful. New balance: $balance');
    } else {
      print('Invalid deposit amount. Please enter a positive value.');
    }
  }

  // Method to withdraw money
  void withdraw(double amount) {
    if (amount > 0) {
      if (amount <= balance) {
        balance -= amount;
        print('Withdrawal successful. New balance: $balance');
      } else {
        print('Insufficient funds. Withdrawal failed.');
      }
    } else {
      print('Invalid withdrawal amount. Please enter a positive value.');
    }
  }

  // Method to display account details
  void displayAccountDetails() {
    print('Account Holder: $accountHolderName');
    print('Account Number: $accountNumber');
    print('Balance: $balance');
    print('Account Type: $accountType');
  }
}

void main() {
  // Example usage:
  BankAccount account1 = BankAccount('John Doe', accountType: 'Checking');
  account1.displayAccountDetails();

  account1.deposit(1000.0);
  account1.withdraw(500.0);
  account1.displayAccountDetails();
}
