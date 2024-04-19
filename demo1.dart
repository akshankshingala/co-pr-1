import 'dart:io';
void main(){
  List myarray =[];
  
  stdout.write("enter element your Array : ");
  int len = int.parse(stdin.readLineSync()!);
  
  for(int i = 1 ; i <= len ; i++){
    stdout.write("Enter Element $i : ");
    
    int ele = int.parse(stdin.readLineSync()!);
    myarray.add(ele);
  }
  print("Elements in the Array are : ");
  myarray.forEach((element) {
      stdout.write("$element   ");
  });
  
  print("");
  print(" enter negative Elements in  Array  : ");
  myarray.forEach((element) {
    
    if(element<0){
      stdout.write("$element   ");
 }
});
}

