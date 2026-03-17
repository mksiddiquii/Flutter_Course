void main() {
  // ==================== Q.1 ====================
  print("===== Q.1 =====");
  List<String> names = ["Ali", "Sara", "John", "Mike", "Emma"];
  print(names);

  // ==================== Q.2 ====================
  print("\n===== Q.2 =====");
  List<String> days = [];
  days.add("Monday");
  days.add("Tuesday");
  days.add("Wednesday");
  days.add("Thursday");
  days.add("Friday");
  days.add("Saturday");
  days.add("Sunday");
  print(days);

  // ==================== Q.3 ====================
  print("\n===== Q.3 =====");
  List<String> daysList = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"];
  daysList.removeLast(); print(daysList);
  daysList.removeLast(); print(daysList);
  daysList.removeLast(); print(daysList);
  daysList.removeLast(); print(daysList);
  daysList.removeLast(); print(daysList);
  daysList.removeLast(); print(daysList);
  daysList.removeLast(); print(daysList);

  // ==================== Q.4 ====================
  print("\n===== Q.4 =====");
  List<int> numbers = [5, 3, 9, 1, 7, 4, 8, 2, 6];
  numbers.sort();
  print("Smallest: ${numbers.first}");
  print("Greatest: ${numbers.last}");

  // ==================== Q.5 ====================
  print("\n===== Q.5 =====");
  Map<String, String> contact = {
    "name": "John",
    "phone": "123-456",
    "age": "25",
    "city": "NY",
  };
  List<String> keysWithLength4 = contact.keys.where((key) => key.length == 4).toList();
  print("Keys with length 4: $keysWithLength4");

  // ==================== Q.6 ====================
  print("\n===== Q.6 =====");
  Map<String, dynamic> world = {
    "countries": {
      "Pakistan": {
        "capitalCity": "Islamabad",
        "currency": "PKR",
        "language": "Urdu"
      },
      "USA": {
        "capitalCity": "Washington D.C.",
        "currency": "USD",
        "language": "English"
      },
    }
  };
  Map<String, dynamic> pakistan = world["countries"]["Pakistan"];
  print("Capital: ${pakistan["capitalCity"]}");
  print("Currency: ${pakistan["currency"]}");

  // ==================== Q.7 ====================
  print("\n===== Q.7 =====");
  Map<String, double> expenses = {
    'sun': 3000.0,
    'mon': 3000.0,
    'tue': 3234.0,
  };
  expenses.containsKey('fri') ? expenses['fri'] = 5000.0 : expenses['fri'] = 5000.0;
  print(expenses);

  // ==================== Q.8 ====================
  print("\n===== Q.8 =====");
  List<Map<String, dynamic>> usersEligibility = [
    {'name': 'John',  'eligible': true},
    {'name': 'Alice', 'eligible': false},
    {'name': 'Mike',  'eligible': true},
    {'name': 'Sarah', 'eligible': true},
    {'name': 'Tom',   'eligible': false},
  ];
  usersEligibility.retainWhere((user) => user['eligible'] == true);
  print(usersEligibility);

  // ==================== Q.9 ====================
  print("\n===== Q.9 =====");
  List<int> numList = [10, 45, 3, 78, 22, 56];
  numList.sort();
  print("Maximum value: ${numList.last}");

  // ==================== Q.10 ====================
  print("\n===== Q.10 =====");
  List<String> withDuplicates = ["apple", "banana", "apple", "cherry", "banana", "date"];
  List<String> noDuplicates = withDuplicates.toSet().toList();
  print(noDuplicates);

  // ==================== Q.11 ====================
  print("\n===== Q.11 =====");
  List<String> originalList = ["One", "Two", "Three", "Four", "Five"];
  int n = 3;
  List<String> firstN = originalList.take(n).toList();
  print(firstN);

  // ==================== Q.12 ====================
  print("\n===== Q.12 =====");
  List<String> strList    = ["Apple", "Banana", "Cherry", "Date"];
  List<String> reversedList = strList.reversed.toList();
  print("Original : $strList");
  print("Reversed : $reversedList");

  // ==================== Q.13 ====================
  print("\n===== Q.13 =====");
  List<int> withDupes   = [1, 2, 3, 2, 4, 1, 5, 3];
  List<int> uniqueList  = withDupes.toSet().toList();
  print(uniqueList);

  // ==================== Q.14 ====================
  print("\n===== Q.14 =====");
  List<int> unsorted = [5, 3, 8, 1, 9, 2];
  List<int> sorted   = List.from(unsorted)..sort();
  print("Original : $unsorted");
  print("Sorted   : $sorted");

  // ==================== Q.15 ====================
  print("\n===== Q.15 =====");
  List<int> withNegatives  = [3, -1, 7, -5, 2, -8, 9];
  List<int> onlyPositives  = withNegatives.where((n) => n > 0).toList();
  print(onlyPositives);

  // ==================== Q.16 ====================
  print("\n===== Q.16 =====");
  List<int> mixedNumbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  List<int> evenNumbers  = mixedNumbers.where((n) => n % 2 == 0).toList();
  print(evenNumbers);

  // ==================== Q.17 ====================
  print("\n===== Q.17 =====");
  List<int> baseList    = [1, 2, 3, 4, 5];
  List<int> squaredList = baseList.map((n) => n * n).toList();
  print(squaredList);

  // ==================== Q.18 ====================
  print("\n===== Q.18 =====");
  Map<String, dynamic> person = {
    "name": "John",
    "age": 25,
    "isStudent": true,
  };
  (person["isStudent"] == true && person["age"] > 18)
      ? print("Eligible")
      : print("Not eligible");

  // ==================== Q.19 ====================
  print("\n===== Q.19 =====");
  Map<String, dynamic> product = {
    "name": "Laptop",
    "price": 999.99,
    "quantity": 5,
  };
  product["quantity"] > 0 ? print("In stock") : print("Out of stock");

  // ==================== Q.20 ====================
  print("\n===== Q.20 =====");
  Map<String, dynamic> car = {
    "brand": "Toyota",
    "color": "Red",
    "isSedan": true,
  };
  (car["isSedan"] == true && car["color"] == "Red")
      ? print("Match")
      : print("No match");

  // ==================== Q.21 ====================
  print("\n===== Q.21 =====");
  Map<String, dynamic> user = {
    "name": "Alice",
    "isAdmin": true,
    "isActive": true,
  };
  (user["isAdmin"] == true && user["isActive"] == true)
      ? print("Active admin")
      : print("Not an active admin");

  // ==================== Q.22 ====================
  print("\n===== Q.22 =====");
  Map<String, int> cart = {
    "Apple": 3,
    "Banana": 5,
    "Orange": 2,
  };
  cart.containsKey("Apple") ? print("Product found") : print("Product not found");
}