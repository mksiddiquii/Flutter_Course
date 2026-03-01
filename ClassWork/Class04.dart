void main() {
  List<int> number = [10, 2, 9, 11, 16, 14, 19, 19];
  print(number);
  number.sort();
  print(number);
  print(number.reversed.toList()); // return in list
  print(number.reversed); // return in ()value
  print(List.of(number.reversed)); // return in list
  print(number.isNotEmpty);
  print(number.isEmpty);

  List<int> vals = [9, 10];
  print(vals);
  vals.add(11);
  print('11 added at the last position: $vals');
  vals.addAll([12, 13, 14]);
  print('Values added at the last index: $vals');
  vals.insert(0, 1);
  print('1 added at index 0: $vals');
  vals.insertAll(1, [2, 3, 4, 5, 6, 7, 8]);
  print('All numbers added at index 1: $vals');
  vals[1] = 3;
  print('Replaced 2 with 3: $vals');
  vals.replaceRange(3, 6, [
    7,
    9,
  ]); // (start, end, replacements — end index not included)
  print('Replaced values from index 3 to 5 with [7, 9]: $vals');
  vals.remove(3);
  print('Removed only the first occurrence of 3: $vals');
  vals.removeAt(2);
  print('Removed element at index 2: $vals');
  vals.removeRange(2, 5);
  print('Removed elements from index 2 to 4: $vals');

  // MAPS START
  Map<String, dynamic> student = {
    'name': 'Kamran',
    'age': 20,
    'grade': 'A',
    'subjects': ['Math', 'Science', 'English'],
    'marks': 95,
  };
  print(student);
  print(student.keys);
  print(student.values);
  print(student['name']);
  print(student['age']);
  print(student['grade']);
  print(student['subjects']);
  print(student['subjects'][1]);
  print(student['marks']);

  List user_data = [
    {
      "id": 1,
      "name": "Leanne Graham",
      "username": "Bret",
      "email": "Sincere@april.biz",
      "address": {
        "street": "Kulas Light",
        "suite": "Apt. 556",
        "city": "Gwenborough",
        "zipcode": "92998-3874",
        "geo": {"lat": "-37.3159", "lng": "81.1496"},
      },
      "phone": "1-770-736-8031 x56442",
      "website": "hildegard.org",
      "company": {
        "name": "Romaguera-Crona",
        "catchPhrase": "Multi-layered client-server neural-net",
        "bs": "harness real-time e-markets",
      },
    },
  ];
  print(user_data[0]["name"]);
  print(user_data[0]["address"]["geo"]["lat"]);
  print(user_data[0]["address"]["geo"]["lng"]);
}
