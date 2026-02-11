import '../Question4/account.dart';

void main() {
  Account acc = Account("George", 1122, 1000);
  Account.annualInterestRate = 1.5;

  acc.deposit(30);
  acc.deposit(40);
  acc.deposit(50);

  acc.withdraw(5);
  acc.withdraw(4);
  acc.withdraw(2);

  print("======= Account Summary =======");
  print("Name: ${acc.name}");
  print("ID: ${acc.id}");
  print("Annual Interest Rate: ${Account.annualInterestRate}%");
  print("Balance: ${acc.balance}");
  print("Date Created: ${acc.dateCreated}");
  print("------- Transactions -------");

  for (var t in acc.transactions) {
    print(
        "${t.date} | ${t.type} | amount=${t.amount} | balance=${t.balance}");
  }
}
