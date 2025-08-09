import 'dart:io';

void main() {
  while (true) {
    // Step 1: Mag-input ng first number
    stdout.write('Enter first number: ');
    double? num1 = double.tryParse(stdin.readLineSync()!);
    if (num1 == null) { //Step 2:if pag invalid yung number na nilagay
      print('Invalid number! Try again.');
      continue;
    }

    // Step 3: Mag input choices operation kung anong operation yung pipiliin mo
    print('Choose operation:');
    print('1. +');
    print('2. -');
    print('3. *');
    print('4. /');

    stdout.write('Enter choice (1-4): '); //Step 4: Dito lalagay mo kung anong operation yung gagamitin mo
    String choice = stdin.readLineSync()!;

    stdout.write('Enter second number: '); // Input the Second number
    double? num2 = double.tryParse(stdin.readLineSync()!);
    if (num2 == null) {  //Dito kagaya lang din sya ng 1 pag nag input ka ng mali mag print sya ng invalid number
      print('Invalid number! Try again.');
      continue;
    }

    double result;

    switch (choice) { // Dito nag lagay lang ako ng number for operation kung anong number yung pinili mo kusa na sya mamimili ng resul
      case '1':
        result = num1 + num2;
        break;
      case '2':
        result = num1 - num2;
        break;
      case '3':
        result = num1 * num2;
        break;
      case '4':
        if (num2 != 0) {
          result = num1 / num2;
        } else {
          print('Error: Division by zero!');
          continue;
        }
        break;
      default:
        print('Invalid choice! Please try again.');
        continue; // dito sa continue is pag balik yung input mo number or any operation mag continue lng ulit sya babalik sya simula sa first number
    }

    print('Result: $result');
    break; // Dito mag eexit na yung loop pag yung ininput mo is valid and mag success na sya
  }
  print("You are successfully input a valid computation");
}
