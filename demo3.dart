void main() {
  List a = [
    [3, 2, 1],
    [6, 5, 4]
  ];
  List b = [
    [8, 8, 8],
    [8, 8, 8]
  ];
  List c = [
    [3, 3, 3],
    [3, 3, 3]
  ];

  for (int i = 0; i <= 2; i++) {
    for (int j = 0; j <= 2; j++) {
      c[i][j] = a[i][j] + b[i][j];
    }
  }

  print("$c");
}
