/*
Клас працівник: ім'я,рік народження , зарплата помісячно.Методи: знаходження найбільшої зарплати.
*/

void main(List<String> args) {
  Employee grek = new Employee("Grek", 90, [130000,150000,120000]);
  print(grek.MaxSallary());
}



class Employee{
  String name = "";
  int _yearBorn=0;
  List<int> sallary = [];
  
   int get yearBorn => _yearBorn;

    set yearBorn(int value) {
      if (value > 80) throw 'Value is not correct';
      _yearBorn = value;
    }

  Employee(String name, int yearBorn, List<int> sallary)
    {
        this.name = name;
        this.yearBorn = yearBorn;
        this.sallary = sallary;
    }

int MaxSallary(){
  int maxNumber = sallary[0];
  for(int i = 1 ; i < sallary.length; i++){
    if(sallary[i] > maxNumber){
      maxNumber = sallary[i];
    }
  }
  return maxNumber;
}
} 