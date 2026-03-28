import 'Assignment03.dart';

void main() {
  separator(1); //Question NO.1
  /* Q.1: Create a list of names and print all names using list. */
  List<String> names = ["Ali", "Sara", "John", "Mike", "Emma"];
  print(names);

  separator(2); //Question NO.2
  /* Q.2: Create an empty list of type string called days. Use the add method to add names of 7 days and print all days. */
  List<String> days = [];
  //Method No.1
  days.add("Monday");
  days.add("Tuesday");
  days.add("Wednesday");
  days.add("Thursday");
  days.add("Friday");
  days.add("Saturday");
  days.add("Sunday");
  print(days);
  //Method No.2
  List<String> days1 = [];
  days1.addAll(["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"]);
  print(days1);

  separator(3); //Question NO.3
  /* Q.3: Create a list of Days and remove one by one from the end of list. */
  List<String> daysList = [
    "Monday",
    "Tuesday",
    "Wednesday",
    "Thursday",
    "Friday",
    "Saturday",
    "Sunday",
  ];
  daysList.removeLast();
  print(daysList);
  daysList.removeLast();
  print(daysList);
  daysList.removeLast();
  print(daysList);
  daysList.removeLast();
  print(daysList);
  daysList.removeLast();
  print(daysList);
  daysList.removeLast();
  print(daysList);
  daysList.removeLast();
  print(daysList);

  separator(4); //Question NO.4
  /* Q.4: Create a list of numbers & write a program to get the smallest & greatest number from a list. */
  List<int> numbers = [5, 3, 9, 1, 7, 4, 8, 2, 6];
  numbers.sort();
  print("Smallest: ${numbers.first}");
  print("Greatest: ${numbers.last}");

  separator(5); //Question NO.5
  /* Q.5: Create a map with name, phone keys and store some values to it. Use where to find all keys that have length 4. */
  Map<String, String> contact = {
    "name": "John",
    "phone": "123-456",
    "age": "25",
    "city": "NY",
  };
  List<String> keysWithLength4 = contact.keys
      .where((key) => key.length == 4)
      .toList();
  print("Keys with length 4: $keysWithLength4");

  separator(6); //Question NO.6
  /* Q.6: Create Map variable name world then inside it create countries Map, Key will be the name country & country value will have another map having capitalCity, currency and language to it. by using any country key print all the value of Capital & Currency. */
  Map<String, dynamic> world = {
    "countries": {
      "Pakistan": {
        "capitalCity": "Islamabad",
        "currency": "PKR",
        "language": "Urdu",
      },
      "USA": {
        "capitalCity": "Washington D.C.",
        "currency": "USD",
        "language": "English",
      },
    },
  };
  print("Capital: ${world["countries"]["Pakistan"]["capitalCity"]}");
  print("Currency: ${world["countries"]["Pakistan"]["currency"]}");
  print("Language: ${world["countries"]["Pakistan"]["language"]}");
  Map<String, dynamic> pakistan = world["countries"]["Pakistan"];
  print("Capital: ${pakistan["capitalCity"]}");
  print("Currency: ${pakistan["currency"]}");

  separator(7); //Question NO.7
  /* Q.7:
Map<String, double> expenses = {
  'sun': 3000.0,
  'mon': 3000.0,
  'tue': 3234.0,
};

Check if "fri" exist in expanses; if exist change it's value to 5000.0 otherwise add 'fri' to expenses and set its value to 5000.0 then print expenses. */
  Map<String, double> expenses = {"sun": 3000.0, "mon": 3000.0, "tue": 3234.0};
  if (expenses.containsKey('fri')) {
    print('fri already exists with value: ${expenses['fri']}');
    expenses['fri'] = 5000.0; // only add if fri value update
  } else {
    expenses['fri'] = 5000.0; // only add if it doesn't exist
    print('fri added successfully!');
  }

  print(expenses);

  separator(8); //Question NO.8
  /* Q.8: remove all false values from below list by using removeWhere or retainWhere property.

List<Map<String, bool>> usersEligibility = [
{'name': 'John', 'eligible': true},
{'name': 'Alice', 'eligible': false},
{'name': 'Mike', 'eligible': true},
{'name': 'Sarah', 'eligible': true},
{'name': 'Tom', 'eligible': false},
]; */
  List<Map<String, dynamic>> usersEligibility = [
    {'name': 'John', 'eligible': true},
    {'name': 'Alice', 'eligible': false},
    {'name': 'Mike', 'eligible': true},
    {'name': 'Sarah', 'eligible': true},
    {'name': 'Tom', 'eligible': false},
  ];
  usersEligibility.retainWhere((i) => i['eligible']);
  print(usersEligibility);
  usersEligibility.removeWhere((i) => i['eligible'] == false);
  print(usersEligibility);

  separator(9); //Question NO.9
  /* Q.9: Given a list of integers, write a dart code that returns the maximum value from the list. */
  List<int> numList = [10, 45, 3, 78, 22, 56];
  numList.sort();
  print("Maximum value: ${numList.last}");

  separator(10); //Question NO.10
  /* Q.10: Write a Dart code that takes in a list of strings and removes any duplicate elements, returning a new list without duplicates. The order of elements in the new list should be the same as in the original list. */
  List<String> withDuplicates = [
    "apple",
    "banana",
    "apple",
    "cherry",
    "banana",
    "date",
  ];
  List<String> noDuplicates = withDuplicates.toSet().toList();
  print(noDuplicates);

  separator(11); //Question NO.11
  /* Q 11: Write a Dart code that takes in a list and an integer n as parameters. The program should print a new list containing the first n elements from the original list. */

  separator(12); //Question NO.12
  /* Q.12: Write a Dart code that takes in a list of strings and prints a new list with the elements in reverse order. The original list should remain unchanged. */
  List<String> strList = ["Apple", "Banana", "Cherry", "Date"];
  List<String> reversedList = strList.reversed.toList();
  print("Original : $strList");
  print("Reversed : $reversedList");

  separator(13); //Question NO.13
  /* Q.13: Implement a code that takes in a list of integers and returns a new list containing only the unique elements from the original list. The order of elements in the new list should be the same as in the original list. */
  List<int> withDuplicate = [1, 2, 3, 2, 4, 1, 5, 3];
  List<int> uniqueList = withDuplicate.toSet().toList();
  print(uniqueList);

  separator(14); //Question NO.14
  /* Q.14: Write a Dart code that takes in a list of integers and prints a new list with the elements sorted in ascending order. The original list should remain unchanged. */
  List<int> unsorted = [5, 3, 8, 1, 9, 2];
  List<int> sorted = List.from(unsorted)..sort();
  print("Original : $unsorted");
  print("Sorted   : $sorted");

  separator(15); //Question NO.15
  /* Q.15: Implement a Dart code that uses the where() method to filter out negative numbers from a list of integers. The program should take in the original list as a parameter and print a new list containing only the positive numbers. */
  List<int> withNegatives = [3, -1, 7, -5, 2, -8, 9];
  List<int> onlyPositives = withNegatives.where((n) => n > 0).toList();
  print(onlyPositives);

  separator(16); //Question NO.
  /* Q.16: Implement a Dart code that uses the where() method to filter out odd numbers from a list of integers. The program should take in the original list as a parameter and print a new list containing only the even numbers. */
  List<int> mixedNumbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  List<int> evenNumbers = mixedNumbers.where((n) => n % 2 == 0).toList();
  print(evenNumbers);

  separator(17); //Question NO.17
  /* Q.17: Given a list of integers, write a Dart code that uses the map() method to create a new list with each value squared. The program should take in the original list as a parameter and print the new list.
 */
  List<int> baseList = [1, 2, 3, 4, 5];
  List<int> squaredList = baseList.map((n) => n * n).toList();
  print(squaredList);

  separator(18); //Question NO.18
  /* Q.18: Create a map named "person" with the following key-value pairs: "name" as "John", "age" as 25, "isStudent" as true. Write a Dart code to check if the person is both a student and over 18 years old. Print "Eligible" if both conditions are true, otherwise print "Not eligible". */
  Map<String, dynamic> person = {"name": "John", "age": 25, "isStudent": true};
  // (person["isStudent"] == true && person["age"] > 18)
  //     ? print("Eligible")
  //     : print("Not eligible");
  if (person["isStudent"] == true && person["age"] > 18) {
    print(
      "${person["name"]} is Student and Age is  ${person["age"]} which  is grater than 18 ,So ${person["name"]} is Eligible",
    );
  } else {
    print(
      "${person["name"]}is not a Student and ${person["age"]} is less than 25 ,So ${person["name"]} is Eligible",
    );
  }

  separator(19); //Question NO.19
  /* Q.19: Given a map representing a product with keys "name", "price", and "quantity", write Dart code to check if the product is in stock. If the quantity is greater than 0, print "In stock", otherwise print "Out of stock".
 */
  Map<String, dynamic> product = {
    "name": "Laptop",
    "price": 999.99,
    "quantity": 5,
  };
  if (product["quantity"] > 0) {
    print("In stock");
  } else {
    print("Out of stock");
  }

  separator(20); //Question NO.20
  /* Q.20: Create a map named "car" with the following key-value pairs: "brand" as "Toyota", "color" as "Red", "isSedan" as true. Write Dart code to check if the car is a sedan and red in color. Print "Match" if both conditions are true, otherwise print "No match". */
  Map<String, dynamic> car = {
    "brand": "Toyota",
    "color": "Red",
    "isSedan": true,
  };
  if (car["isSedan"] == true && car["color"] == "Red") {
    print("Match");
  } else {
    print("No match");
  }

  separator(21); //Question NO.21
  /* Q.21: Given a map representing a user with keys "name", "isAdmin", and "isActive", write Dart code to check if the user is an active admin. If the user is both an admin and active, print "Active admin", otherwise print "Not an active admin". */
  Map<String, dynamic> user = {
    "name": "Alice",
    "isAdmin": true,
    "isActive": true,
  };
  if (user["isAdmin"] && user["isActive"] == true) {
    print("Active admin");
  } else {
    print("Not an active admin");
  }

  separator(22); //Question NO.22
  /* Q.22: Given a map representing a shopping cart with keys as product names and values as quantities, write Dart code to check if a product named "Apple" exists in the cart. Print "Product found" if it exists, otherwise print "Product not found". */
  Map<String, int> cart = {"Apple": 3, "Banana": 5, "Orange": 2};
  if (cart.containsKey("Apple")) {
    print("Product found");
  } else {
    print("Product not found");
  }
  
}
