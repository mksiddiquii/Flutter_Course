void main() {
  int table = 3;
  print("$table x 1 =${table * 1}");
  print("$table x 2 =${table * 2}");
  print("$table x 3 =${table * 3}");
  print("$table x 4 =${table * 4}");
  print("$table x 5 =${table * 5}");
  print("$table x 6 =${table * 6}");
  print("$table x 7 =${table * 7}");
  print("$table x 8 =${table * 8}");
  print("$table x 9 =${table * 9}");
  print("$table x 9 =${table * 10}");

  // MAPS START
  Map<String, dynamic> student = {
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
}
