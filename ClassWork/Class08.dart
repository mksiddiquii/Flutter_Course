void main() {
  //FUNCTIONS
  /* 3 types of parameters
  1. Required Positional Parameters
  2. Optional Positional Parameters [ ]
  3. Named Parameters { } required and optional*/
  // requiredpara(18, "kamran");
  // print("*" * 50);
  // optpara(18);
  // optpara(17, "kamran");
  // print("*" * 50);
  // namePara(name: "kami");
  int multiply = calculateMultply(6, 8);
  print(multiply);
  printMessage("Welcome to Dart");
  displayUserInfo("Kami", 30);
  calculateArea(5.0, 3.0);
}

//required posotional parameters
requiredpara(age, name) {
  print(age);
  print(name);
}

//Optional Positional Parameters [ ]
optpara(age, [name]) {
  print(age);
  print(name);
}

//Named Parameters { }*/ //required and optional
namePara({name, age = 18, cellno = 03008221660}) {
  print("""$name 
    $age
    $cellno""");
}

//Return type fucntion
calculateMultply(num1, num2) {
  return num1 * num2;
}

// Function with no return value
void printMessage(String message) {
  print('Message: $message');
}

// Function that performs action
void displayUserInfo(String name, int age) {
  print('Name: $name');
  print('Age: $age');
}

// Function with calculations
calculateArea(double length, double width) {
  double area = length * width;
  print('Area: $area square units');
  return area;
}
