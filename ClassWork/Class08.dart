void main() {
  //FUNCTIONS
  /* 3 types of parameters
  1. Required Positional Parameters
  2. Optional Positional Parameters [ ]
  3. Named Parameters { } required and optional*/

  //required posotional parameters
  requiredpara(age, name) {
    print(age);
    print(name);
  }

  requiredpara(18, "kamran");
  print("*" * 50);
  //Optional Positional Parameters [ ]
  optpara(age, [name]) {
    print(age);
    print(name);
  }

  optpara(18);
  optpara(17, "kamran");
   print("*" * 50);
  //Named Parameters { }*/ //required and optional
  namePara({name, age=18, cellno=03008221660}) {
    print("""$name 
    $age
    $cellno""");
  }

  namePara(name:"kami",);
}
