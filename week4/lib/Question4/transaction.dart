class Transaction {
  final DateTime date;
  final String type;
  final double amount;
  final double balance;
  final String description;

  Transaction(
      this.date, this.type, this.amount, this.balance, this.description);
}
