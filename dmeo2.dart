5import 'dart:io';

void main() {
  List<int> allNumbers = [];

  print("Enter any 15 numbers: ");

  for (int i = 0; i < 10; i++) {
    String enterinput = stdin.readLineSync()!;
    int num = int.parse(enterinput);
    allNumbers.add(num);
  }

  int bigetsNumber = allNumbers[0];
  for (int i = 1; i < allNumbers.length; i++) {
    if (allNumbers[i] > bigetsNumber) {
      bigetsNumber = allNumbers[i];
    }
  }

  print('The largest number is: $bigetsNumber');
}
