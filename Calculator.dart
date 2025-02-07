import 'dart:io';
void main(){
  Calculator calc = Calculator();
  var continueRunning = true;

while(continueRunning){
  print("Menu \n");
  print("1. Addition \n");
  print("2. Subtraction \n");
  print("3. Multiplication \n");
  print("4. Division \n");
  print("5. Exit \n");
  print("Enter your choice: ");
  int choice = int.parse(stdin.readLineSync() ?? '0');

    switch(choice){
      case 1:
        calc.add();
        break;
      case 2:
        calc.subtract();
        break;
      case 3:
        calc.multiply();
        break;
      case 4:
        calc.divide();
        break;
      case 5:
        continueRunning = false;
        print("Exiting...");
        break;
      default:
        print("Invalid choice");
        return;
    }

}
}

class Calculator {
  void add(){
    print("Enter the first number");
    int a = int.tryParse(stdin.readLineSync() ?? '0') ?? 0;
    print("Enter the second number");
    int b = int.tryParse(stdin.readLineSync() ?? '0') ?? 0;
    print("$a + $b = ${a + b} \n");
  }

  void subtract(){
    print("Enter the first number");
    int a = int.tryParse(stdin.readLineSync() ?? '0') ?? 0;
    print("Enter the second number");
    int b = int.parse(stdin.readLineSync() ?? '0');
    print("$a - $b = ${a - b}\n");
  }

  void multiply(){
    print("Enter the first number");
    int a = int.parse(stdin.readLineSync() ?? '0');
    print("Enter the second number");
    int b = int.parse(stdin.readLineSync() ?? '0');
    print("$a * $b = ${a * b}\n");
  }

  void divide(){
    print("Enter the first number");
    double a = double.parse(stdin.readLineSync() ?? '0');
    print("Enter the second number");
    double b = double.parse(stdin.readLineSync() ?? '0');
    print("$a / $b = ${a / b}\n");
  }

}