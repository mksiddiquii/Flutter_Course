import 'dart:io';

void main() {
  /*   Map<String, dynamic> student = {
    'name': 'Kamran',
    'age': 20,
    'grade': 'A',
    'subjects': ['Math', 'Science', 'English'],
    'marks': 95,
  };
  print(student); // whole map print
  print(student.keys); //only keys print
  print(student.values); //only value print
  print(student.length);
  student.addAll({"cityName": "Kaachi"});
  student["subjects"].add("Islamit");
  student.putIfAbsent("age", () => 24);
  student.putIfAbsent("address", () => "105/7");
  print(student.entries);
  student["age"] = 24;
  print(student);
  print("=" * 50);
  //The .. is called Cascade Operator — it lets you perform multiple operations on the same object without repeating the object name.
  student
    ..['name'] = "M.Kamran"
    ..['age'] = 20
    ..['grade'] = "A+"
    ..['marks'] = 97;
  print(student); */
  //Spread Operator (...)
  //The spread operator expands an iterable (array, object, string) into individual elements.
  List<int> number1 = [1, 2, 3];
  List<int> number2 = [4, 5, 6];
  List<int> both = [...number1, ...number2];
  List<int> both1 = [...number1, ...number2, 7, 8, 9];
  List<int> both2 = [-1, 0, ...number2];
  print(number1);
  print(number2);
  print(both);
  print(both1);
  print(both2);
  //Increment and Decrement
  int num = 5;

  print('Initial: $num'); // 5
  print('Post-increment: ${num++}'); // prints 5, then becomes 6
  print('After post-increment: $num'); // 6

  print('Pre-increment: ${++num}'); // becomes 7, then prints 7
  print('After pre-increment: $num'); // 7

  print('Post-decrement: ${num--}'); // prints 7, then becomes 6
  print('Pre-decrement: ${--num}'); // becomes 5, then prints 5

  int num1 = num++ + num++; //output 11
  //          5 + 6=11
  int num2 = ++num + 6 + num++; //output 7
  //         8+6+7=
  int num3 = num--; //output 7
  int num4 = --num; //output 5
  print('''
  "num1" :$num1
  "num2" :$num2
  "num3" :$num3
  "num4 :$num4
''');
  //loop
  // input
  int input = int.parse(stdin.readLineSync()!);
  // print(input);
  for (var i = 1; i <= 10; i++) {
    print("$input X $i = ${input * i}");
  }

  for (var i = 10; i > 0; i--) {
    print(i);
  }
}
