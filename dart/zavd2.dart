// З клавіатури вводитися символ. Визначити, чи є цей символ буквою,
// цифрою, розділовим знаком чи іншим символом.

import 'dart:io';

void main() {
  print('Enter a character:');
  String? character = stdin.readLineSync();
  if (character == null || character.length != 1) {
    print('Invalid input.');
    return;
  }

  int code = character.codeUnitAt(0);

  if (code >= 48 && code <= 57) {
    print('This is a number.');
  } else if ((code >= 65 && code <= 90) || (code >= 97 && code <= 122)) {
    print('This is a letter.');
  } else if (code >= 32 && code <= 47 || code >= 58 && code <= 64 ||
      code >= 91 && code <= 96 || code >= 123 && code <= 126) {
    print('This is a punctuation mark or other symbol.');
  } else {
    print('This is an unrecognized character.');
  }
}