import 'account.dart';
import 'dart:io';

void main() {
  List<Account> accounts =
  List.generate(10, (i) => Account.withData(i, 1000));

  while (true) {
    int id;
    do {
      stdout.write("Enter an id (0-9): ");
      id = int.parse(stdin.readLineSync()!);
    } while (id < 0 || id > 9);

    Account acc = accounts[id];
    bool exit = false;

    while (!exit) {
      print("\nMain menu");
      print("1: check balance");
      print("2: withdraw");
      print("3: deposit");
      print("4: exit");
      stdout.write("Enter a choice: ");
      int choice = int.parse(stdin.readLineSync()!);

      switch (choice) {
        case 1:
          print("The balance is ${acc.balance.toStringAsFixed(2)} Baht");
          break;

        case 2:
          stdout.write("Enter an amount to withdraw: ");
          double w = double.parse(stdin.readLineSync()!);
          acc.withdraw(w);
          print(
              "Withdraw successful. New balance = ${acc.balance.toStringAsFixed(2)} Baht");
          break;

        case 3:
          stdout.write("Enter an amount to deposit: ");
          double d = double.parse(stdin.readLineSync()!);
          acc.deposit(d);
          print(
              "Deposit successful. New balance = ${acc.balance.toStringAsFixed(2)} Baht");
          break;

        case 4:
          print("Exit menu.");
          exit = true;
          break;
      }
    }
  }
}
