import 'dart:io';

void main() {
  List<List<int>> a = [
    [1, 2, 3],
    [7, 8, 9],
    [4, 5, 6],
  ];
  List<List<int>> b = [
    [7, 8, 9],
    [10, 11, 12],
    [13, 14, 15],
  ];


  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) {
      stdout.write('Enter element of a[$i][$j] : ');
      int val = int.parse(stdin.readLineSync()!);
      a[i][j] = val;
    }
  }


  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) {
      stdout.write('Enter element of a[$i][$j] : ');
      int val = int.parse(stdin.readLineSync()!);
      a[i][j] = val;
    }
  }
  print("Sum of Array:"); 
  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) stdout.write("${a[i][j] + b[i][j]} ");
    print('');
  }
}
