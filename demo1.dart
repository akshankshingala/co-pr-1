import 'dart:io';
void main(){
  var array = [];
  List myArray = array.toList();
  stdout.write("enter element your Array : ");
  int len = int.parse(stdin.readLineSync()!);
  for(int i = 1 ; i <= len ; i++){
    stdout.write("Enter Element $i : ");
    int el = int.parse(stdin.readLineSync()!);
    myArray.add(el);
  }
  print("Elements in the Array are : ");
  myArray.forEach((element) {
      stdout.write("$element   ");
  });
  print("");
  print(" enter negative Elements in  Array  : ");
  myArray.forEach((element) {
    if(element<0){
      stdout.write("$element   ");
 }
});
}
