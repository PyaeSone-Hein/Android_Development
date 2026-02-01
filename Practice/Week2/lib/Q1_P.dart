import 'dart:io';

void main(){
  stdout.write("Enter a number: ");
  int number = int.parse(stdin.readLineSync()!.trim());

  print(number);

  List<int> divisors = [];

  for (int i = 1; i <= number; i++){
    if (number%i == 0){
      divisors.add(i);
    }
  }
  print("Divisors of $number: $divisors");
}
