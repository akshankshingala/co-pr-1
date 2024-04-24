import 'dart:io';
void main() {
    stdout.write("Enter Row : ");
  int row = int.parse(stdin.readLineSync()!);
  print("");
  stdout.write("Enter Column Number : ");
  int col = int.parse(stdin.readLineSync()!);
  List<List<int>> myArray = List.generate(row, (i) {
    return List.generate(col, (j) {
      stdout.write("Enter value ${[i]} ${[j]}: ");
      return int.parse(stdin.readLineSync()!);
    });
  });
    print("Array : ");
    myArray.forEach((element) {
      stdout.write("$element ");
      print("");
    });
    int choice;
    do{
      print("Press 1 for sum of all elements : ");
      print("Press 2 for sum of specific row : ");
      print("Press 3 for sum of specific coloum : ");
      print("Press 4 for sum of diogonal elmenets : ");
      print("Press 5 for sum of anti diagonal elements : ");
      print("Press 0 for Exit : ");
      print("~");
      stdout.write("Enter your elements : ");
    choice = int.parse(stdin.readLineSync()!);
    print("~");
    switch (choice) {
      case 1:
        int sum = 0;
        for (int i = 0; i < myArray.length; i++) {
          for (int j = 0; j < myArray.length; j++) {
            sum += myArray[i][j];
          }
        }
        print("The sum of all the elements : $sum");
        print("~");
        break;
      case 2:
        print("The sum of the ROW : ");
        stdout.write("Enter the row number : ");
        int rowNum = int.parse(stdin.readLineSync()!);
        if (rowNum > myArray.length) {
          print("Invalid row number");
          print("~");
          break;
        }
        int rowSum = 0;
        for (int j = 0; j < myArray[rowNum - 1].length; j++) {
          rowSum += myArray[rowNum - 1][j];
        }
        print("The Sum of Row $rowNum : $rowSum");
        print("~");
        break;
      case 3:
        print("The sum of the column : ");
        stdout.write("Enter the column number : ");
        int colNum = int.parse(stdin.readLineSync()!);
        if (colNum > myArray[0].length) {
          print("Invalid column number");
          print("~");
          break;
        }
        int colSum = 0;
        for (int i = 0; i < myArray.length; i++) {
          colSum += myArray[i][colNum - 1];
        }
        print("The sum of column $colNum : $colSum");
        print("~");
        break;
      case 4:
        int diagonalSum = 0;
        for (int i = 0; i < myArray.length; i++) {
          diagonalSum += myArray[i][i];
        }
        print("The sum of all the diagonal  : $diagonalSum");
        print("~");
        break;
      case 5:
        int antiDiagSum = 0;
        for (int i = 0; i < myArray.length; i++) {
          antiDiagSum += myArray[i][myArray[i].length - 1 - i];
        }
        print("The Sum of all the anti-diagonal : $antiDiagSum");
        print("~");
        break;
      case 6:
        print("Exiting the code...");
        return;
      default:
        print("Invalid input choise!!");
    }
    }while(choice!=6);
  }
