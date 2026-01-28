import 'dart:io';

List <int> generateFibonacci(int n){
  List <int> fib = [];

  if (n <= 0) return fib;

  fib.add(0);
  if (n == 1) return fib;

  fib.add(1);
  for (int i = 2; i < n; i ++){
    fib.add(fib[i - 1] + fib[i-2]);
  }

  return fib;
}

void main(){
  stdout.write("How many fibonacci numbers?: ");
  int n = int.parse(stdin.readLineSync()!.trim());

  List <int> result = generateFibonacci(n);
  print("Fibonacci sequence: $result");
  //print(result);
}