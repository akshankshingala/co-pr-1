import 'dart:io';
void main() {
  List myArray = [];
  print("Enter 3 elements first to Enter the Menu Driven Code : ");
  myArray = List.generate(3, (i) {
      stdout.write("Enter the value for Element ${i+1} : ");
      int ele = int.parse(stdin.readLineSync()!);
      myArray.add(ele);
      return ele;
    });
  int choice;
  do {
    print("~");
    print("Enter 1 to Insert an element in the Array  ");
    print("Enter 2 to Delete an element in the Array  ");
    print("Enter 3 to Update an element in the Array  ");
    print("Enter 4 to View the elements in the Array  ");
    print("Enter 0 to Exit ");
    print("~");
    stdout.write("Enter Your Choice Number : ");
    choice = int.parse(stdin.readLineSync()!);
    print("~");
    switch (choice) {
      case 1:
        stdout.write("Enter the Element you want to Insert in your Array : ");
        int addVar = int.parse(stdin.readLineSync()!);
        myArray.add(addVar);
        print("~");
        print(myArray);
        print("~");
        break;
      case 2:
        stdout.write("Enter the Element you want to Delete : ");
        int index = int.parse(stdin.readLineSync()!);
        print("");
        if(index>myArray.length){
          print("Index is Invalid!!");
          print("~");
        }
        else{
          stdout.write("Enter the Element you want : ");
          int newEle = int.parse(stdin.readLineSync()!);
          myArray[index] = newEle;
          print(myArray);
          print("~");
        }
        print("~");
        break;
      case 3:
        stdout.write("Enter the Element you want to Update : ");
        int UpdateVar = int.parse(stdin.readLineSync()!);
        myArray.Update(UpdateVar);
        print(myArray);
        print("~");
        break;
      case 4:
        stdout.write("You are Viewing the List : ");
        myArray.forEach((element) {
          stdout.write("$element  ");
        });
        print("");
        print("~");
        break;
      case 0:
        print("Exiting the Code...");
        break;
      default:
        print("Invalid Choice!!");
    }
  } while (choice != 0);
}
