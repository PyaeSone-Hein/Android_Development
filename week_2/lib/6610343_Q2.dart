import 'dart:math';
import 'dart:io';

void main() {
  Random random = Random();
  int number = random.nextInt(100) + 1;

  stdout.write('Guess a number (Between 1 and 100): ');
  int guess = int.parse(stdin.readLineSync()!.trim());

  if (guess > number) {
    print('Too high.');
  } else if (guess < number) {
    print('Too low.');
  } else {
    print('Exactly right.');
  }

  print('The number was: $number');
}


