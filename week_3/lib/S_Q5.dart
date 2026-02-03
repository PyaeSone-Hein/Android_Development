import 'dart:math';

List <int>? uniqueRandomInts(int min, int max, int count){
  if (min > max || count <= 0 || count > (max - min + 1)) {
    return null;
  }

  final rand = Random();
  final Set<int> result = {};

  while (result.length < count) {
    final value = min + rand.nextInt(max - min + 1);
    result.add(value);
  }
  return result.toList();
}

void main() {
  final nums = uniqueRandomInts(-10, 20, 6);
  print(nums ?? "IMPOSSIBLE");
}