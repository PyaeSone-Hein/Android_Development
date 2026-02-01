import 'dart:io';
import 'dart:math';

void main(){
  int min = 1;
  int max = 100;
  int value = min + Random().nextInt(max-min+1);
  print(value);

  stdout.write("Guess a number: ");
  int guess = int.parse(stdin.readLineSync()!.trim());

  if(guess < value){
    print('Too low.');
  }else if(guess > value){
    print('Too High.');
  }else{
    print('Exact number.');
  }
}