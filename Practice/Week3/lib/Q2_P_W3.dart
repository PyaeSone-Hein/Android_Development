import 'dart:io';
import 'dart:math';

String generatePassword(int length){
  const lower = 'abcdefghijklmnopqrstuvwxyz';
  const upper = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
  const number = '0123456789';
  const symbol = '!@#\$%^&*()_+-=~';

  final allChars = lower + upper + number + symbol;
  final rand = Random();

  List <String> passwordChars = [];

  for (int i = 0; i < length; i++) {
    int randomIndex = rand.nextInt(allChars.length);
    passwordChars.add(allChars[randomIndex]);
  }
  return passwordChars.join();


}

void main(){
  stdout.write("Enter a password minimun8: ");
  int length = int.parse(stdin.readLineSync()!.trim());

  if (length < 8){
    print("Password must be at least 8 characters.");
    return;

  }

  String password = generatePassword(length);
  print("Generated Password: $password");
}
