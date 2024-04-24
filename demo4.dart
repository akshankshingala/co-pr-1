import 'dart:io';

void main() {
  stdout.write("Enter Row : ");
  int row = int.parse(stdin.readLineSync()!);
  print("");
  stdout.write("Enter Column : ");
  int col = int.parse(stdin.readLineSync()!);
  List<List<int>> myArray1 = List.generate(row, (i) {
    return List.generate(col, (j) {
      stdout.write("Enter value  ${[i]} ${[j]}: ");
      return int.parse(stdin.readLineSync()!);
    });
  });
  List<List<int>> myArray2 = List.generate(row, (i) {
    return List.generate(col, (j) {
      stdout.write("Enter value ${[i]} ${[j]}: ");
      return int.parse(stdin.readLineSync()!);
    });
  });
  print("Array 1 : ");
  myArray1.forEach((element) {
    stdout.write("$element ");
    print("");
  });
  print("Array 2 :");
  myArray2.forEach((element) {
    stdout.write("$element ");
    print("");
  });
  print("Array 1 + Array 2 :");
  List<List<int>> myArray3 = List.generate(row, (i) {
    return List.generate(col, (j) {
      return myArray1[i][j] + myArray2[i][j];
    });
  });
  myArray3.forEach((element) {
    stdout.write("$element ");
    print("");
  });
}
