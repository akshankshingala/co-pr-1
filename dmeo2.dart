import 'dart:io';

void main() {
  List<int> Number = [];

  print("Enter any  numbers: ");

  for (int i = 0; i < n ; i++) {
    String a = (stdin.readLineSync()!);
    int n = int.parse(a);
    Number.add(n);
  }

  int largestNumber = Number[0];
  for (int i = 1; i < Number.length; i++) {
    if (Number[i] > largestNumber) {
      largestNumber = Number[i];
    }
  }

  print('\nThe largest number is: $largestNumber');
}
