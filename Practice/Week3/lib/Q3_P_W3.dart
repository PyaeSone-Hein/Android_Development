import 'dart:io';

String getBirthday(Map <String, String> birthdays, String name){
  if (birthdays.containsKey(name)){
    return birthdays[name]!;
  }else{
    return "Birthday not found";
  }
}

void main(){
  final birthdays = {
    "Htoo Eain Thin": "July 1, 1963",
    "Kyaw Hein": " July 14, 1947",
    "Tekkatho Phone Naing": "January 16, 1930",
  };
  print("We know Celebrity Birthdays!");
  print("Name a Celebrity:");

  for (var person in birthdays.keys) {
    print("- $person");
  }

  stdout.write("Who's birthday do you want to look up? ");
  String name = stdin.readLineSync()!;

  String result = getBirthday(birthdays, name);

  if (result == "Birthday not found") {
    print("We don't have that birthday.");
  } else {
    print("$name's birthday is $result.");
  }
} 