// Створити функцію, яка за номером дня дозволяє з’ясувати чи є цей день робочим.
import 'dart:io';
void main() {
  print('Введіть номер дня:');
 int? day = int.parse(stdin.readLineSync()!);
 whatDay(day);
}

void whatDay(int day) {
 switch(day){
     
    case 1: 
        print("workday");
        break;
    case 2: 
        print("workday");
        break;
    case 3: 
        print("workday");
         break;
    case 4: 
        print("workday");
         break;
    case 5: 
        print("workday");
         break;
    case 6: 
        print("weekend");
         break;
    case 7: 
        print("weekend");
         break;
};
}