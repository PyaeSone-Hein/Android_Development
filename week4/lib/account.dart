class Account {
  int _id = 0;
  double _balance = 0;
  static double _annualInterestRate = 0;
  final DateTime _dateCreated = DateTime.now();

  Account();

  Account.withData(this._id, this._balance);

  // getters & setters
  int get id => _id;
  double get balance => _balance;
  DateTime get dateCreated => _dateCreated;

  static double get annualInterestRate => _annualInterestRate;
  static set annualInterestRate(double rate) {
    _annualInterestRate = rate;
  }

  double getMonthlyInterestRate() {
    return _annualInterestRate / 12 / 100;
  }

  double getMonthlyInterest() {
    return _balance * getMonthlyInterestRate();
  }

  void withdraw(double amount) {
    _balance -= amount;
  }

  void deposit(double amount) {
    _balance += amount;
  }
}

void main() {
  Account acc = Account.withData(1122, 20000);
  Account.annualInterestRate = 4.5;

  acc.withdraw(2500);
  acc.deposit(3000);

  print("Account ID: ${acc.id}");
  print("Balance: \$${acc.balance.toStringAsFixed(2)}");
  print("Monthly Interest: \$${acc.getMonthlyInterest().toStringAsFixed(2)}");
  print("Date Created: ${acc.dateCreated}");
}
