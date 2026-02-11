import '../Question4/transaction.dart';

class Account {
  int _id;
  String name;
  double _balance;
  static double annualInterestRate = 0;
  final DateTime dateCreated = DateTime.now();
  List<Transaction> transactions = [];

  Account(this.name, this._id, this._balance);

  int get id => _id;
  double get balance => _balance;

  void deposit(double amount) {
    _balance += amount;
    transactions.add(Transaction(
        DateTime.now(), "Deposit", amount, _balance, "Deposit"));
  }

  void withdraw(double amount) {
    _balance -= amount;
    transactions.add(Transaction(
        DateTime.now(), "Withdraw", amount, _balance, "Withdraw"));
  }
}
