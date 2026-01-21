import 'dart:io';

void main() {
  // Year
  stdout.write('Enter year (e.g., 2013): ');
  final int year = int.parse(stdin.readLineSync()!.trim());

  // First day
  stdout.write('Enter first day of the year (1=Sun, 2=Mon, ..., 7=Sat): ');
  int firstDay = int.parse(stdin.readLineSync()!.trim());

  List<String> months = [
    'January', 'February', 'March', 'April',
    'May', 'June', 'July', 'August',
    'September', 'October', 'November', 'December'
  ];

  List<int> daysInMonth = [
    31,
    isLeapYear(year) ? 29 : 28,
    31,
    30,
    31,
    30,
    31,
    31,
    30,
    31,
    30,
    31
  ];

  int startDay = firstDay - 1; // Convert to 0-based (Sun = 0)

  for (int i = 0; i < 12; i++) {
    printMonth(months[i], year, daysInMonth[i], startDay);
    startDay = (startDay + daysInMonth[i]) % 7;
  }
}

// leap year
bool isLeapYear(int year) {
  return (year % 400 == 0) || (year % 4 == 0 && year % 100 != 0);
}

//a single month
void printMonth(String month, int year, int days, int startDay) {
  print('\n$month $year');
  print('-----------------------------');
  print('Sun Mon Tue Wed Thu Fri Sat');

  // Initial spaces
  for (int i = 0; i < startDay; i++) {
    stdout.write('    ');
  }

  for (int day = 1; day <= days; day++) {
    stdout.write(day.toString().padLeft(3) + ' ');

    if ((day + startDay) % 7 == 0) {
      print('');
    }
  }
  print('\n');
}
