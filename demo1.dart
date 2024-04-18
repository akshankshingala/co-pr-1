import 'dart:io';

void main() {
  int n;

  print("enter any value");
  n = int.parse(stdin.readLineSync()!);

  if (n > 0) {
    print("number is positive");
  } else {
    print("number is nagetive");
  }
}
