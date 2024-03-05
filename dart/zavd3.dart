// Написати програму виведення на екран таблиці значень функцій sin(x),
// cos(x) і tg(x) на відрізку [–2,2 ] з кроком /4.
import 'dart:math';

void main() {
  print(' x | sin(x) | cos(x) | tg(x)');
  print('-------------------------------');

  for (double x = -2.0; x <= 2.0; x += 0.25) {
    double sinX = sin(x * pi / 180);
    double cosX = cos(x * pi / 180);
    double tgX;

    if (cosX == 0) {
      tgX = double.infinity;
    } else {
      tgX = sinX / cosX;
    }

    print('${x.toStringAsFixed(2)} |'
        ' ${sinX.toStringAsFixed(4)} |'
        ' ${cosX.toStringAsFixed(4)} |'
        ' ${tgX.toStringAsFixed(4)}');
  }
}