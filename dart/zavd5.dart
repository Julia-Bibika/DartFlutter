/*Дано масив, який містить послідовність значень ідентифікаційних кодів (цілих трицифрових чисел)
користувачів сайту, що відвідували даний сайт протягом дня. Перша цифра коду означає вид клієнта
(1- новачок, 2-постійний клієнт, 3-пільговик). Вивести усіх наявних клієнтів по категоріям.*/

void printUsersByCategory(List<int> userCodes) {
  int newcomers = 0;
  int regularCustomers = 0;
  int privilegedCustomers = 0;

  for (int userCode in userCodes) {
    switch (userCode ~/ 100) {
      case 1:
        newcomers++;
        break;
      case 2:
        regularCustomers++;
        break;
      case 3:
        privilegedCustomers++;
        break;
      default:
        print('Invalid user code: $userCode');
        break;
    }
  }

  print('Newcomers: $newcomers');
  print('Regular customers: $regularCustomers');
  print('Privileged customers: $privilegedCustomers');
}

void main() {
  List<int> userCodes = [123, 234, 345, 111, 222, 333, 159];
  printUsersByCategory(userCodes);
}