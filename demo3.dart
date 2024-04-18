import 'dart:io';
void main(){
    var array = [1,2,3,4];
    List myArray = array.toList();
    
    print("Enter 1 to insert an element in the Array  ");
    
    print("Enter 2 to Delete an element in the Array  ");
    
    print("Enter 3 to update an element in the Array  ");
    
    print("Enter 4 to View the elements in the Array  ");
    
    stdout.write("Enter Your element : ");
    int choice = int.parse(stdin.readLineSync()!);
    
    switch(choice){
            
      case 1:
        stdout.write("Enter Array Element  : ");
        int addVar = int.parse(stdin.readLineSync()!);
            
        myArray.add(addVar);
        print(myArray);
        break;
            
      case 2:
        stdout.write("Enter Array Element : ");
        int index = int.parse(stdin.readLineSync()!);
            
        print("");
        stdout.write("Enter Array Element : ");
        int newele = int.parse(stdin.readLineSync()!);
            
        myArray[index] = newele;
        print(myArray);
        break;
            
      case 3:
        stdout.write("Enter Array Element: ");
        int removeVar = int.parse(stdin.readLineSync()!);
            
        myArray.remove(removeVar);
        print(myArray);
        break;
            
      case 4:
        stdout.write("You are Viewing the List : ");
        myArray.forEach((element) {
          stdout.write("$element  ");
        });
        break;
      default:
        print("Invalid input!!");
 }
}
