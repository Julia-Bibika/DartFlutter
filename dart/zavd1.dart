// Визначити скільки повних тижнів є у вказаній кількості днів.

import 'dart:io';

void main() {
  print("Input days: ");
  int? days = int.parse(stdin.readLineSync()!);
  int weeks = days ~/ 7;
  print('There are $weeks full weeks in $days days.');
}