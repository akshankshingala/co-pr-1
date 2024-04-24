import 'dart:io';

void main() {
    List<int> myArray = [];
    stdout.write("Enter your Array number : ");
    int len = int.parse(stdin.readLineSync()!);
    myArray = List.generate(len, (i) {
      stdout.write("Enter the Element for Array ${i+1} : ");
      int el = int.parse(stdin.readLineSync()!);
      myArray.add(el);
      return el;
    });
    int large = myArray[0];
    myArray.forEach((element) {
      if(element>large){
        large = element;
      }
    });
    print("The Largest Element in the Array is : $large");
}
