# Dart Programming Language
## Comprehensive Guide with Examples

*This guide includes multiple examples for each concept*

---

## 1. Introduction to Dart

Dart is an open-source, general-purpose programming language developed by Google in 2011. It is optimized for building fast, cross-platform applications with a focus on mobile (Flutter), web, desktop, and server-side development.

### Key Features

- **Object-Oriented**: Everything is an object, supports classes, interfaces, and mixins
- **Strongly Typed**: Type-safe with sound null safety
- **AOT & JIT Compilation**: Fast startup and execution
- **Garbage Collection**: Automatic memory management
- **Async/Await**: Built-in asynchronous programming support
- **Rich Standard Library**: Comprehensive built-in packages

---

## 2. Setup and Installation

### Installing Dart SDK

#### Example 1: macOS Installation
```bash
brew tap dart-lang/dart
brew install dart
```

#### Example 2: Windows Installation
```bash
choco install dart-sdk
```

#### Example 3: Linux Installation
```bash
sudo apt-get update
sudo apt-get install apt-transport-https
wget -qO- https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo gpg --dearmor -o /usr/share/keyrings/dart.gpg
echo 'deb [signed-by=/usr/share/keyrings/dart.gpg arch=amd64] https://storage.googleapis.com/download.dartlang.org/linux/debian stable main' | sudo tee /etc/apt/sources.list.d/dart_stable.list
sudo apt-get update
sudo apt-get install dart
```

### First Programs - Three Examples

#### Example 1: Hello World
```dart
void main() {
  print('Hello, Dart!');
}
```

#### Example 2: Simple Calculator
```dart
void main() {
  int a = 10;
  int b = 5;
  print('Sum: ${a + b}');
  print('Difference: ${a - b}');
  print('Product: ${a * b}');
  print('Quotient: ${a / b}');
}
```

#### Example 3: User Greeting
```dart
void main() {
  String name = 'Alice';
  int age = 25;
  String city = 'New York';
  
  print('Hello, $name!');
  print('You are $age years old.');
  print('You live in $city.');
}
```

---

## 3. Data Types

Dart has several built-in data types. Here's a comprehensive overview:

### Data Type Examples

#### Example 1: Numbers (int and double)
```dart
void main() {
  // Integer examples
  int students = 30;
  int temperature = -5;
  int large = 1000000;
  
  // Double examples
  double pi = 3.14159;
  double price = 99.99;
  double negative = -0.5;
  
  print('Students: $students');
  print('Temperature: $temperature°C');
  print('Pi: $pi');
  print('Price: \$${price}');
}
```

#### Example 2: Strings
```dart
void main() {
  // Single quotes
  String name = 'Alice';
  
  // Double quotes
  String city = "New York";
  
  // String interpolation
  String greeting = 'Hello, $name from $city!';
  
  // Multi-line string
  String poem = '''
  Roses are red,
  Violets are blue,
  Dart is awesome,
  And so are you!
  ''';
  
  // Raw string
  String path = r'C:\Users\Documents\file.txt';
  
  print(greeting);
  print(poem);
  print(path);
}
```

#### Example 3: Collections (List, Set, Map)
```dart
void main() {
  // List example
  List<String> fruits = ['apple', 'banana', 'orange'];
  List<int> primes = [2, 3, 5, 7, 11];
  
  // Set example
  Set<String> colors = {'red', 'green', 'blue'};
  Set<int> evenNumbers = {2, 4, 6, 8, 10};
  
  // Map example
  Map<String, int> ages = {
    'Alice': 25,
    'Bob': 30,
    'Charlie': 35
  };
  
  Map<String, String> capitals = {
    'USA': 'Washington DC',
    'France': 'Paris',
    'Japan': 'Tokyo'
  };
  
  print('Fruits: $fruits');
  print('Colors: $colors');
  print('Ages: $ages');
}
```

---

## 4. Variables and Constants

### Variable Declaration Examples

#### Example 1: Explicit Type Declaration
```dart
void main() {
  int age = 25;
  double height = 5.9;
  String name = 'John';
  bool isStudent = true;
  
  print('Name: $name');
  print('Age: $age');
  print('Height: $height ft');
  print('Is Student: $isStudent');
}
```

#### Example 2: Type Inference with var
```dart
void main() {
  var city = 'London';           // inferred as String
  var population = 9000000;     // inferred as int
  var temperature = 22.5;       // inferred as double
  var isCapital = true;         // inferred as bool
  
  // Once inferred, type cannot change
  // city = 123;  // ERROR: can't assign int to String
  
  print('City: $city');
  print('Population: $population');
  print('Temperature: $temperature°C');
}
```

#### Example 3: Dynamic Type
```dart
void main() {
  dynamic value = 42;
  print('Value as int: $value');
  
  value = 'Now a string';
  print('Value as String: $value');
  
  value = true;
  print('Value as bool: $value');
  
  value = [1, 2, 3];
  print('Value as List: $value');
  
  // Dynamic allows type changes but loses type safety
}
```

### Final and Const Examples

#### Example 1: Final Variables
```dart
void main() {
  // Final - runtime constant, set once
  final String name = 'Alice';
  final currentTime = DateTime.now();
  final randomNumber = 42;
  
  print('Name: $name');
  print('Current Time: $currentTime');
  
  // name = 'Bob';  // ERROR: can't reassign final variable
}
```

#### Example 2: Const Variables
```dart
void main() {
  // Const - compile-time constant
  const double pi = 3.14159;
  const int daysInWeek = 7;
  const String appName = 'My Dart App';
  
  // Const collections
  const List<int> fibonacci = [1, 1, 2, 3, 5, 8];
  const Map<String, int> httpCodes = {
    'OK': 200,
    'Not Found': 404,
    'Server Error': 500
  };
  
  print('Pi: $pi');
  print('Days in week: $daysInWeek');
  print('HTTP OK: ${httpCodes['OK']}');
}
```

#### Example 3: Late Variables
```dart
// Late - initialized later, must be set before use
late String description;
late int userId;

void main() {
  // Can be set after declaration
  description = 'User profile description';
  userId = 12345;
  
  print('User ID: $userId');
  print('Description: $description');
  
  // Late with lazy initialization
  late String heavyComputation = expensiveOperation();
  // expensiveOperation() only called when heavyComputation is accessed
}

String expensiveOperation() {
  print('Running expensive operation...');
  return 'Result';
}
```

### Null Safety Examples

#### Example 1: Non-nullable vs Nullable
```dart
void main() {
  // Non-nullable - cannot be null
  String name = 'Alice';
  int age = 25;
  // name = null;  // ERROR
  
  // Nullable - can be null
  String? nickname;
  int? phoneNumber;
  
  print('Name: $name');
  print('Nickname: $nickname');  // null
  
  nickname = 'Ally';
  phoneNumber = 1234567890;
  print('Nickname: $nickname');
  print('Phone: $phoneNumber');
}
```

#### Example 2: Null-aware Operators
```dart
void main() {
  String? username;
  
  // ?? operator - provide default if null
  String displayName = username ?? 'Guest';
  print('Display Name: $displayName');  // Guest
  
  username = 'Alice';
  displayName = username ?? 'Guest';
  print('Display Name: $displayName');  // Alice
  
  // ??= operator - assign if null
  String? greeting;
  greeting ??= 'Hello';  // assigns because greeting is null
  print(greeting);  // Hello
  greeting ??= 'Hi';    // doesn't assign because greeting is not null
  print(greeting);  // Still Hello
}
```

#### Example 3: Safe Navigation and Assertions
```dart
void main() {
  String? name;
  
  // Safe navigation with ?.
  int? length = name?.length;  // returns null instead of error
  print('Length: $length');  // null
  
  name = 'Alice';
  length = name?.length;
  print('Length: $length');  // 5
  
  // Null assertion with !
  String definitelyNotNull = 'Hello';
  String? mightBeNull = definitelyNotNull;
  
  // Use ! when you're certain it's not null
  print(mightBeNull!.toUpperCase());  // HELLO
  
  // Be careful with !
  String? nullValue;
  // print(nullValue!.length);  // Runtime error!
}
```

---

## 5. Operators

### Arithmetic Operators

#### Example 1: Basic Arithmetic
```dart
void main() {
  int a = 15;
  int b = 4;
  
  print('Addition: $a + $b = ${a + b}');        // 19
  print('Subtraction: $a - $b = ${a - b}');     // 11
  print('Multiplication: $a * $b = ${a * b}');  // 60
  print('Division: $a / $b = ${a / b}');        // 3.75
  print('Integer Division: $a ~/ $b = ${a ~/ b}');  // 3
  print('Modulo: $a % $b = ${a % b}');          // 3
}
```

#### Example 2: Increment and Decrement
```dart
void main() {
  int count = 5;
  
  print('Initial: $count');     // 5
  print('Post-increment: ${count++}');  // prints 5, then becomes 6
  print('After post-increment: $count'); // 6
  
  print('Pre-increment: ${++count}');   // becomes 7, then prints 7
  print('After pre-increment: $count'); // 7
  
  print('Post-decrement: ${count--}');  // prints 7, then becomes 6
  print('Pre-decrement: ${--count}');   // becomes 5, then prints 5
}
```

#### Example 3: Compound Assignment
```dart
void main() {
  int x = 10;
  
  x += 5;   // x = x + 5
  print('After +=: $x');   // 15
  
  x -= 3;   // x = x - 3
  print('After -=: $x');   // 12
  
  x *= 2;   // x = x * 2
  print('After *=: $x');   // 24
  
  x ~/= 4;  // x = x ~/ 4
  print('After ~/=: $x');  // 6
  
  x %= 4;   // x = x % 4
  print('After %=: $x');   // 2
}
```

### Comparison Operators

#### Example 1: Number Comparison
```dart
void main() {
  int score1 = 85;
  int score2 = 90;
  
  print('Equal: ${score1 == score2}');              // false
  print('Not Equal: ${score1 != score2}');          // true
  print('Greater: ${score1 > score2}');             // false
  print('Less: ${score1 < score2}');                // true
  print('Greater or Equal: ${score1 >= score2}');   // false
  print('Less or Equal: ${score1 <= score2}');      // true
}
```

#### Example 2: String Comparison
```dart
void main() {
  String name1 = 'Alice';
  String name2 = 'Bob';
  String name3 = 'Alice';
  
  print('$name1 == $name2: ${name1 == name2}');  // false
  print('$name1 == $name3: ${name1 == name3}');  // true
  print('$name1 != $name2: ${name1 != name2}');  // true
  
  // Lexicographic comparison
  print('$name1 < $name2: ${name1.compareTo(name2) < 0}');  // true (A < B)
}
```

#### Example 3: Object Comparison
```dart
void main() {
  List<int> list1 = [1, 2, 3];
  List<int> list2 = [1, 2, 3];
  List<int> list3 = list1;
  
  // Different objects with same content
  print('list1 == list2: ${list1 == list2}');  // false (different objects)
  
  // Same object reference
  print('list1 == list3: ${list1 == list3}');  // true (same reference)
  
  // Content comparison requires custom logic or packages
  bool sameContent = list1.length == list2.length &&
      list1.every((element) => list2.contains(element));
  print('Same content: $sameContent');  // true
}
```

### Logical Operators

#### Example 1: AND Operator (&&)
```dart
void main() {
  int age = 25;
  bool hasLicense = true;
  
  // Both conditions must be true
  bool canDrive = age >= 18 && hasLicense;
  print('Can drive: $canDrive');  // true
  
  int temperature = 30;
  bool isSunny = true;
  bool isGoodBeachDay = temperature > 25 && isSunny;
  print('Good beach day: $isGoodBeachDay');  // true
  
  int score = 75;
  bool passedExam = score >= 60 && score <= 100;
  print('Passed exam: $passedExam');  // true
}
```

#### Example 2: OR Operator (||)
```dart
void main() {
  String day = 'Saturday';
  
  // At least one condition must be true
  bool isWeekend = day == 'Saturday' || day == 'Sunday';
  print('Is weekend: $isWeekend');  // true
  
  int age = 65;
  bool getDiscount = age < 12 || age >= 65;
  print('Gets discount: $getDiscount');  // true
  
  String role = 'admin';
  bool hasAccess = role == 'admin' || role == 'moderator';
  print('Has access: $hasAccess');  // true
}
```

#### Example 3: NOT Operator (!)
```dart
void main() {
  bool isRaining = false;
  bool isLoggedIn = true;
  
  // Negates the boolean value
  print('Not raining: ${!isRaining}');     // true
  print('Not logged in: ${!isLoggedIn}'); // false
  
  // Complex example
  int age = 16;
  bool isAdult = age >= 18;
  bool isMinor = !isAdult;
  print('Is minor: $isMinor');  // true
  
  // Double negation
  bool value = true;
  print('Double negation: ${!!value}');  // true
}
```

### Type Test Operators

#### Example 1: is Operator
```dart
void main() {
  var value = 'Hello';
  
  print('Is String: ${value is String}');  // true
  print('Is int: ${value is int}');         // false
  print('Is Object: ${value is Object}');   // true (everything is Object)
  
  dynamic data = 42;
  if (data is int) {
    print('Data is an integer: $data');
  }
  
  var list = [1, 2, 3];
  print('Is List: ${list is List}');  // true
}
```

#### Example 2: is! Operator
```dart
void main() {
  var number = 42;
  
  print('Is not String: ${number is! String}');  // true
  print('Is not double: ${number is! double}');  // true
  print('Is not int: ${number is! int}');        // false
  
  dynamic value = 'text';
  if (value is! int) {
    print('Value is not an integer');
  }
  
  var data = true;
  print('Is not List: ${data is! List}');  // true
}
```

#### Example 3: as Operator (Type Cast)
```dart
void main() {
  Object name = 'Alice';
  
  // Cast to String
  String str = name as String;
  print('Uppercase: ${str.toUpperCase()}');
  
  dynamic value = 100;
  int number = value as int;
  print('Doubled: ${number * 2}');
  
  // Careful: wrong cast throws error
  Object obj = 42;
  try {
    String wrongCast = obj as String;  // Runtime error!
  } catch (e) {
    print('Cast failed: $e');
  }
}
```

### Cascade Notation

#### Example 1: List Cascade
```dart
void main() {
  // Without cascade
  var numbers = <int>[];
  numbers.add(1);
  numbers.add(2);
  numbers.add(3);
  numbers.addAll([4, 5]);
  
  // With cascade
  var fruits = <String>[]
    ..add('apple')
    ..add('banana')
    ..add('orange')
    ..addAll(['mango', 'grape']);
  
  print(fruits);  // [apple, banana, orange, mango, grape]
}
```

#### Example 2: Object Cascade
```dart
class Person {
  String? name;
  int? age;
  String? city;
  
  void display() {
    print('$name, $age, $city');
  }
}

void main() {
  // Without cascade
  var person1 = Person();
  person1.name = 'Alice';
  person1.age = 30;
  person1.city = 'NYC';
  person1.display();
  
  // With cascade
  var person2 = Person()
    ..name = 'Bob'
    ..age = 25
    ..city = 'London'
    ..display();
}
```

#### Example 3: StringBuffer Cascade
```dart
void main() {
  // Build a string efficiently
  var buffer = StringBuffer()
    ..write('Hello')
    ..write(' ')
    ..write('World')
    ..writeln('!')
    ..write('Dart is')
    ..write(' awesome');
  
  print(buffer.toString());
  // Output:
  // Hello World!
  // Dart is awesome
  
  // Another example
  var html = StringBuffer()
    ..write('<html>')
    ..write('<body>')
    ..write('<h1>Title</h1>')
    ..write('</body>')
    ..write('</html>');
  
  print(html);
}
```

---

## 6. Control Flow Statements

### If-Else Statements

#### Example 1: Grade Calculator
```dart
void main() {
  int score = 85;
  
  if (score >= 90) {
    print('Grade: A - Excellent!');
  } else if (score >= 80) {
    print('Grade: B - Good job!');
  } else if (score >= 70) {
    print('Grade: C - Satisfactory');
  } else if (score >= 60) {
    print('Grade: D - Need improvement');
  } else {
    print('Grade: F - Failed');
  }
  // Output: Grade: B - Good job!
}
```

#### Example 2: Age Category
```dart
void main() {
  int age = 25;
  
  if (age < 13) {
    print('Child');
  } else if (age < 20) {
    print('Teenager');
  } else if (age < 60) {
    print('Adult');
  } else {
    print('Senior');
  }
  // Output: Adult
  
  // Nested if-else
  bool hasTicket = true;
  if (age >= 18) {
    if (hasTicket) {
      print('Welcome to the concert!');
    } else {
      print('Please buy a ticket');
    }
  } else {
    print('Sorry, adults only');
  }
}
```

#### Example 3: Ternary Operator
```dart
void main() {
  int number = 15;
  
  // Ternary: condition ? trueValue : falseValue
  String result = number % 2 == 0 ? 'Even' : 'Odd';
  print('$number is $result');  // 15 is Odd
  
  int age = 20;
  String status = age >= 18 ? 'Adult' : 'Minor';
  print('Status: $status');  // Status: Adult
  
  double score = 85.5;
  String grade = score >= 90 ? 'A' : score >= 80 ? 'B' : score >= 70 ? 'C' : 'F';
  print('Grade: $grade');  // Grade: B
  
  // Null-coalescing vs ternary
  String? name;
  String display1 = name ?? 'Guest';  // Using ??
  String display2 = name != null ? name : 'Guest';  // Using ternary
  print(display1);  // Guest
}
```

### Switch Statements

#### Example 1: Day of Week
```dart
void main() {
  String day = 'Wednesday';
  
  switch (day) {
    case 'Monday':
      print('Start of work week');
      break;
    case 'Tuesday':
    case 'Wednesday':
    case 'Thursday':
      print('Mid-week day');
      break;
    case 'Friday':
      print('Last work day!');
      break;
    case 'Saturday':
    case 'Sunday':
      print('Weekend!');
      break;
    default:
      print('Invalid day');
  }
  // Output: Mid-week day
}
```

#### Example 2: Calculator
```dart
void main() {
  String operator = '+';
  double num1 = 10;
  double num2 = 5;
  double result;
  
  switch (operator) {
    case '+':
      result = num1 + num2;
      print('$num1 + $num2 = $result');
      break;
    case '-':
      result = num1 - num2;
      print('$num1 - $num2 = $result');
      break;
    case '*':
      result = num1 * num2;
      print('$num1 * $num2 = $result');
      break;
    case '/':
      result = num1 / num2;
      print('$num1 / $num2 = $result');
      break;
    default:
      print('Invalid operator');
  }
  // Output: 10.0 + 5.0 = 15.0
}
```

#### Example 3: HTTP Status Codes
```dart
void main() {
  int statusCode = 404;
  
  switch (statusCode) {
    case 200:
      print('OK - Request successful');
      break;
    case 201:
      print('Created - Resource created');
      break;
    case 400:
      print('Bad Request - Invalid syntax');
      break;
    case 401:
      print('Unauthorized - Authentication required');
      break;
    case 404:
      print('Not Found - Resource not found');
      break;
    case 500:
      print('Internal Server Error');
      break;
    default:
      print('Status code: $statusCode');
  }
  // Output: Not Found - Resource not found
}
```

### For Loops

#### Example 1: Classic For Loop
```dart
void main() {
  // Print numbers 1-10
  for (int i = 1; i <= 10; i++) {
    print(i);
  }
  
  // Print even numbers
  for (int i = 0; i <= 20; i += 2) {
    print('Even: $i');
  }
  
  // Countdown
  for (int i = 5; i >= 1; i--) {
    print('Countdown: $i');
  }
  print('Blast off!');
}
```

#### Example 2: For-in Loop
```dart
void main() {
  // Iterate over list
  List<String> fruits = ['apple', 'banana', 'orange', 'mango'];
  for (var fruit in fruits) {
    print('I like $fruit');
  }
  
  // Iterate over set
  Set<int> primes = {2, 3, 5, 7, 11};
  for (var prime in primes) {
    print('Prime number: $prime');
  }
  
  // Iterate over string characters
  String word = 'Dart';
  for (var char in word.split('')) {
    print('Character: $char');
  }
}
```

#### Example 3: forEach Method
```dart
void main() {
  // List forEach
  List<int> numbers = [1, 2, 3, 4, 5];
  numbers.forEach((num) {
    print('Number: $num, Squared: ${num * num}');
  });
  
  // Map forEach
  Map<String, int> scores = {
    'Alice': 95,
    'Bob': 87,
    'Charlie': 92
  };
  scores.forEach((name, score) {
    print('$name scored $score');
  });
  
  // Using forEach with arrow function
  List<String> names = ['Alice', 'Bob', 'Charlie'];
  names.forEach((name) => print('Hello, $name!'));
}
```

### While and Do-While Loops

#### Example 1: While Loop
```dart
void main() {
  // Count to 5
  int count = 1;
  while (count <= 5) {
    print('Count: $count');
    count++;
  }
  
  // Sum numbers until threshold
  int sum = 0;
  int i = 1;
  while (sum < 100) {
    sum += i;
    i++;
  }
  print('Sum reached $sum after $i iterations');
  
  // User input simulation
  int attempts = 0;
  bool correct = false;
  while (!correct && attempts < 3) {
    attempts++;
    print('Attempt $attempts');
    if (attempts == 2) correct = true;  // Simulating correct answer
  }
}
```

#### Example 2: Do-While Loop
```dart
void main() {
  // Executes at least once
  int num = 1;
  do {
    print('Number: $num');
    num++;
  } while (num <= 5);
  
  // Menu simulation
  int choice;
  do {
    print('--- Menu ---');
    print('1. Option A');
    print('2. Option B');
    print('3. Exit');
    choice = 3;  // Simulating user input
    print('You selected: $choice');
  } while (choice != 3);
  
  // Factorial calculator
  int n = 5;
  int factorial = 1;
  int counter = n;
  do {
    factorial *= counter;
    counter--;
  } while (counter > 0);
  print('Factorial of $n is $factorial');  // 120
}
```

#### Example 3: Break and Continue
```dart
void main() {
  // Break example - stop when found
  for (int i = 1; i <= 10; i++) {
    if (i == 7) {
      print('Found 7, stopping!');
      break;
    }
    print(i);
  }
  
  // Continue example - skip certain values
  print('\nOdd numbers:');
  for (int i = 1; i <= 10; i++) {
    if (i % 2 == 0) continue;  // Skip even numbers
    print(i);
  }
  
  // Nested loops with labeled break
  outerLoop:
  for (int i = 1; i <= 3; i++) {
    for (int j = 1; j <= 3; j++) {
      if (i == 2 && j == 2) {
        print('Breaking outer loop at i=$i, j=$j');
        break outerLoop;
      }
      print('i=$i, j=$j');
    }
  }
}
```

---

## 7. Functions

### Basic Functions

#### Example 1: Functions with Return Values
```dart
// Function that returns sum
int add(int a, int b) {
  return a + b;
}

// Function that returns product
double multiply(double x, double y) {
  return x * y;
}

// Function that returns string
String greet(String name) {
  return 'Hello, $name!';
}

void main() {
  int sum = add(5, 3);
  print('Sum: $sum');  // 8
  
  double product = multiply(4.5, 2.0);
  print('Product: $product');  // 9.0
  
  String greeting = greet('Alice');
  print(greeting);  // Hello, Alice!
}
```

#### Example 2: Void Functions
```dart
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
void calculateArea(double length, double width) {
  double area = length * width;
  print('Area: $area square units');
}

void main() {
  printMessage('Welcome to Dart!');
  displayUserInfo('Bob', 30);
  calculateArea(5.0, 3.0);
}
```

#### Example 3: Arrow Functions
```dart
// Arrow function for simple expressions
int square(int n) => n * n;

bool isEven(int number) => number % 2 == 0;

String capitalize(String text) => 
    text.isEmpty ? text : text[0].toUpperCase() + text.substring(1);

void main() {
  print('Square of 5: ${square(5)}');  // 25
  print('Is 8 even? ${isEven(8)}');    // true
  print('Is 7 even? ${isEven(7)}');    // false
  
  String word = 'hello';
  print(capitalize(word));  // Hello
  
  // Arrow function with list operations
  List<int> numbers = [1, 2, 3, 4, 5];
  var doubled = numbers.map((n) => n * 2);
  print(doubled);  // (2, 4, 6, 8, 10)
}
```

### Optional Parameters

#### Example 1: Optional Positional Parameters
```dart
// Optional parameters in square brackets
String greet(String name, [String? title]) {
  if (title != null) {
    return 'Hello, $title $name';
  }
  return 'Hello, $name';
}

int calculateSum(int a, int b, [int c = 0, int d = 0]) {
  return a + b + c + d;
}

void main() {
  print(greet('Alice'));           // Hello, Alice
  print(greet('Smith', 'Dr.'));    // Hello, Dr. Smith
  
  print(calculateSum(1, 2));          // 3
  print(calculateSum(1, 2, 3));       // 6
  print(calculateSum(1, 2, 3, 4));    // 10
}
```

#### Example 2: Optional Named Parameters
```dart
// Named parameters with curly braces
void printPersonInfo({
  String? name,
  int? age,
  String? city,
  String country = 'Unknown'
}) {
  print('Name: ${name ?? "Not provided"}');
  print('Age: ${age ?? "Not provided"}');
  print('City: ${city ?? "Not provided"}');
  print('Country: $country');
}

void createAccount({
  required String email,
  required String password,
  String? phone
}) {
  print('Creating account for $email');
  if (phone != null) {
    print('Phone: $phone');
  }
}

void main() {
  printPersonInfo(name: 'Alice', age: 25);
  printPersonInfo(name: 'Bob', city: 'NYC', country: 'USA');
  
  createAccount(email: 'user@example.com', password: 'pass123');
  createAccount(
    email: 'admin@example.com',
    password: 'admin123',
    phone: '555-1234'
  );
}
```

#### Example 3: Mixing Parameters
```dart
// Required positional, optional positional, named
void bookFlight(
  String from,
  String to,
  [String? class_],
  {DateTime? date, int passengers = 1}
) {
  print('Flight from $from to $to');
  if (class_ != null) print('Class: $class_');
  print('Passengers: $passengers');
  if (date != null) print('Date: $date');
}

// Function with default values
String formatCurrency(double amount, {String symbol = '\$', int decimals = 2}) {
  return '$symbol${amount.toStringAsFixed(decimals)}';
}

void main() {
  bookFlight('NYC', 'LAX');
  bookFlight('NYC', 'LAX', 'Business', date: DateTime(2024, 12, 25));
  bookFlight('NYC', 'LAX', passengers: 3);
  
  print(formatCurrency(99.5));                      // $99.50
  print(formatCurrency(1234.567, symbol: '€'));     // €1234.57
  print(formatCurrency(42.1, decimals: 3));         // $42.100
}
```

### Anonymous and Higher-Order Functions

#### Example 1: Anonymous Functions
```dart
void main() {
  // Anonymous function in variable
  var multiply = (int a, int b) {
    return a * b;
  };
  print(multiply(4, 5));  // 20
  
  // Anonymous function with list
  var numbers = [1, 2, 3, 4, 5];
  numbers.forEach((number) {
    print('Number: $number, Square: ${number * number}');
  });
  
  // Using anonymous function with map
  var doubled = numbers.map((n) {
    return n * 2;
  });
  print(doubled);  // (2, 4, 6, 8, 10)
  
  // Short arrow syntax
  var tripled = numbers.map((n) => n * 3);
  print(tripled);  // (3, 6, 9, 12, 15)
}
```

#### Example 2: Functions as Parameters
```dart
// Function that accepts function as parameter
void executeOperation(int a, int b, Function operation) {
  var result = operation(a, b);
  print('Result: $result');
}

int add(int x, int y) => x + y;
int subtract(int x, int y) => x - y;
int multiply(int x, int y) => x * y;

void main() {
  executeOperation(10, 5, add);       // Result: 15
  executeOperation(10, 5, subtract);  // Result: 5
  executeOperation(10, 5, multiply);  // Result: 50
  
  // Pass anonymous function
  executeOperation(10, 5, (a, b) => a ~/ b);  // Result: 2
  
  // Filter with function
  List<int> numbers = [1, 2, 3, 4, 5, 6];
  var evens = numbers.where((n) => n % 2 == 0);
  print('Even numbers: $evens');  // (2, 4, 6)
}
```

#### Example 3: Functions Returning Functions
```dart
// Function that returns a function
Function makeMultiplier(int multiplier) {
  return (int value) => value * multiplier;
}

// Function returning function with state
Function makeCounter() {
  int count = 0;
  return () {
    count++;
    return count;
  };
}

void main() {
  // Create specialized functions
  var multiplyByTwo = makeMultiplier(2);
  var multiplyByTen = makeMultiplier(10);
  
  print(multiplyByTwo(5));   // 10
  print(multiplyByTen(5));   // 50
  
  // Counter example
  var counter1 = makeCounter();
  print(counter1());  // 1
  print(counter1());  // 2
  print(counter1());  // 3
  
  var counter2 = makeCounter();
  print(counter2());  // 1 (independent counter)
}
```

### Recursive Functions

#### Example 1: Factorial
```dart
int factorial(int n) {
  if (n <= 1) {
    return 1;
  }
  return n * factorial(n - 1);
}

void main() {
  print('Factorial of 5: ${factorial(5)}');   // 120
  print('Factorial of 7: ${factorial(7)}');   // 5040
  print('Factorial of 10: ${factorial(10)}'); // 3628800
  
  // Trace: factorial(5)
  // 5 * factorial(4)
  // 5 * 4 * factorial(3)
  // 5 * 4 * 3 * factorial(2)
  // 5 * 4 * 3 * 2 * factorial(1)
  // 5 * 4 * 3 * 2 * 1 = 120
}
```

#### Example 2: Fibonacci
```dart
int fibonacci(int n) {
  if (n <= 1) {
    return n;
  }
  return fibonacci(n - 1) + fibonacci(n - 2);
}

void main() {
  // Print first 10 Fibonacci numbers
  for (int i = 0; i < 10; i++) {
    print('Fibonacci($i) = ${fibonacci(i)}');
  }
  // Output: 0, 1, 1, 2, 3, 5, 8, 13, 21, 34
  
  print('\nFibonacci of 12: ${fibonacci(12)}');  // 144
}
```

#### Example 3: Sum of Digits
```dart
int sumDigits(int n) {
  if (n == 0) {
    return 0;
  }
  return (n % 10) + sumDigits(n ~/ 10);
}

// Count down recursively
void countdown(int n) {
  if (n <= 0) {
    print('Blast off!');
    return;
  }
  print(n);
  countdown(n - 1);
}

void main() {
  print('Sum of digits in 12345: ${sumDigits(12345)}');  // 15
  print('Sum of digits in 999: ${sumDigits(999)}');      // 27
  
  print('\nCountdown:');
  countdown(5);
  // Output: 5, 4, 3, 2, 1, Blast off!
}
```

---

## 8. Collections

### Lists

#### Example 1: List Creation and Basic Operations
```dart
void main() {
  // Creating lists
  List<int> numbers = [1, 2, 3, 4, 5];
  var fruits = ['apple', 'banana', 'orange'];
  List<String> empty = [];
  List<double> prices = [9.99, 19.99, 29.99];
  
  // Adding elements
  fruits.add('mango');
  fruits.addAll(['grape', 'kiwi']);
  print(fruits);  // [apple, banana, orange, mango, grape, kiwi]
  
  // Inserting at specific position
  numbers.insert(2, 10);  // Insert 10 at index 2
  print(numbers);  // [1, 2, 10, 3, 4, 5]
  
  // Removing elements
  fruits.remove('banana');
  fruits.removeAt(0);  // Remove first element
  print(fruits);  // [orange, mango, grape, kiwi]
}
```

#### Example 2: List Properties and Access
```dart
void main() {
  List<String> colors = ['red', 'green', 'blue', 'yellow'];
  
  // Properties
  print('Length: ${colors.length}');        // 4
  print('Is empty: ${colors.isEmpty}');     // false
  print('Is not empty: ${colors.isNotEmpty}');  // true
  print('First: ${colors.first}');          // red
  print('Last: ${colors.last}');            // yellow
  
  // Accessing elements
  print('Element at index 2: ${colors[2]}');  // blue
  colors[1] = 'purple';  // Modify element
  print(colors);  // [red, purple, blue, yellow]
  
  // Sublist
  var subset = colors.sublist(1, 3);
  print('Subset: $subset');  // [purple, blue]
  
  // Reversed
  print('Reversed: ${colors.reversed}');  // (yellow, blue, purple, red)
}
```

#### Example 3: List Methods and Transformations
```dart
void main() {
  List<int> numbers = [5, 2, 8, 1, 9, 3];
  
  // Sorting
  numbers.sort();
  print('Sorted: $numbers');  // [1, 2, 3, 5, 8, 9]
  
  // Map - transform each element
  var doubled = numbers.map((n) => n * 2).toList();
  print('Doubled: $doubled');  // [2, 4, 6, 10, 16, 18]
  
  // Where - filter elements
  var evens = numbers.where((n) => n % 2 == 0).toList();
  print('Evens: $evens');  // [2, 8]
  
  // Contains and indexOf
  print('Contains 5: ${numbers.contains(5)}');  // true
  print('Index of 8: ${numbers.indexOf(8)}');   // 4
  
  // Reduce - combine all elements
  var sum = numbers.reduce((a, b) => a + b);
  print('Sum: $sum');  // 28
  
  // Any and Every
  print('Any > 5: ${numbers.any((n) => n > 5)}');     // true
  print('All > 0: ${numbers.every((n) => n > 0)}');   // true
}
```

### Sets

#### Example 1: Set Creation and Basic Operations
```dart
void main() {
  // Creating sets (no duplicates)
  Set<int> numbers = {1, 2, 3, 4, 5};
  var fruits = {'apple', 'banana', 'orange'};
  Set<String> empty = {};
  
  // Adding elements
  fruits.add('mango');
  fruits.add('apple');  // Won't add duplicate
  print(fruits);  // {apple, banana, orange, mango}
  
  // Adding multiple
  numbers.addAll({6, 7, 8, 2});  // 2 is duplicate, won't be added
  print(numbers);  // {1, 2, 3, 4, 5, 6, 7, 8}
  
  // Removing elements
  fruits.remove('banana');
  print(fruits);  // {apple, orange, mango}
  
  // Clear all
  empty.clear();
}
```

#### Example 2: Set Operations
```dart
void main() {
  Set<int> set1 = {1, 2, 3, 4, 5};
  Set<int> set2 = {4, 5, 6, 7, 8};
  
  // Union - all elements from both sets
  var union = set1.union(set2);
  print('Union: $union');  // {1, 2, 3, 4, 5, 6, 7, 8}
  
  // Intersection - common elements
  var intersection = set1.intersection(set2);
  print('Intersection: $intersection');  // {4, 5}
  
  // Difference - elements in set1 but not in set2
  var difference = set1.difference(set2);
  print('Difference: $difference');  // {1, 2, 3}
  
  // Contains
  print('set1 contains 3: ${set1.contains(3)}');  // true
  
  // Length
  print('set1 length: ${set1.length}');  // 5
}
```

#### Example 3: Set from List (Remove Duplicates)
```dart
void main() {
  // Remove duplicates from list
  List<int> numbersWithDuplicates = [1, 2, 2, 3, 3, 3, 4, 5, 5];
  Set<int> uniqueNumbers = numbersWithDuplicates.toSet();
  print('Unique: $uniqueNumbers');  // {1, 2, 3, 4, 5}
  
  // Convert back to list
  List<int> uniqueList = uniqueNumbers.toList();
  print('Unique list: $uniqueList');  // [1, 2, 3, 4, 5]
  
  // Remove duplicates from string list
  List<String> tags = ['dart', 'flutter', 'dart', 'mobile', 'flutter'];
  var uniqueTags = tags.toSet();
  print('Unique tags: $uniqueTags');  // {dart, flutter, mobile}
  
  // Check for duplicates
  bool hasDuplicates = tags.length != tags.toSet().length;
  print('Has duplicates: $hasDuplicates');  // true
}
```

### Maps

#### Example 1: Map Creation and Basic Operations
```dart
void main() {
  // Creating maps
  Map<String, int> ages = {
    'Alice': 25,
    'Bob': 30,
    'Charlie': 35
  };
  
  var capitals = {
    'USA': 'Washington DC',
    'France': 'Paris',
    'Japan': 'Tokyo'
  };
  
  // Adding entries
  ages['David'] = 28;
  capitals['India'] = 'New Delhi';
  print(ages);     // {Alice: 25, Bob: 30, Charlie: 35, David: 28}
  print(capitals); // {USA: Washington DC, France: Paris, Japan: Tokyo, India: New Delhi}
  
  // Accessing values
  print('Alice age: ${ages['Alice']}');  // 25
  print('USA capital: ${capitals['USA']}');  // Washington DC
  
  // Removing entries
  ages.remove('Bob');
  print(ages);  // {Alice: 25, Charlie: 35, David: 28}
}
```

#### Example 2: Map Methods and Properties
```dart
void main() {
  Map<String, double> prices = {
    'apple': 1.50,
    'banana': 0.75,
    'orange': 2.00
  };
  
  // Properties
  print('Length: ${prices.length}');        // 3
  print('Is empty: ${prices.isEmpty}');     // false
  print('Keys: ${prices.keys}');            // (apple, banana, orange)
  print('Values: ${prices.values}');        // (1.5, 0.75, 2.0)
  
  // Contains
  print('Has apple: ${prices.containsKey('apple')}');      // true
  print('Has price 2.00: ${prices.containsValue(2.00)}');  // true
  
  // Update value
  prices.update('apple', (value) => value * 2);  // Double the price
  print('Updated apple: ${prices['apple']}');  // 3.0
  
  // Put if absent
  prices.putIfAbsent('mango', () => 3.50);
  print(prices);  // Includes mango now
}
```

#### Example 3: Iterating Maps
```dart
void main() {
  Map<String, int> scores = {
    'Math': 95,
    'English': 88,
    'Science': 92,
    'History': 85
  };
  
  // forEach
  print('Scores:');
  scores.forEach((subject, score) {
    print('$subject: $score');
  });
  
  // for-in with entries
  print('\nUsing entries:');
  for (var entry in scores.entries) {
    print('${entry.key}: ${entry.value}');
  }
  
  // for-in with keys
  print('\nSubjects:');
  for (var subject in scores.keys) {
    print('$subject - Score: ${scores[subject]}');
  }
  
  // Map transformations
  var bonusScores = scores.map((k, v) => MapEntry(k, v + 5));
  print('\nWith 5-point bonus:');
  print(bonusScores);
}
```

---

## 9. Important Notes

This comprehensive guide covers the fundamental concepts of Dart programming with multiple examples for each topic. For more advanced topics including:

- **Object-Oriented Programming** (Classes, Inheritance, Mixins, Abstract Classes)
- **Asynchronous Programming** (Future, async/await, Stream)
- **Error Handling and Exceptions**
- **Generics and Type Safety**
- **Libraries and Packages**
- **Extension Methods**
- **Enumerations**

Please refer to the official Dart documentation at [https://dart.dev](https://dart.dev) for more in-depth information and the latest updates.

### Key Resources:
- **Official Dart Website**: [https://dart.dev](https://dart.dev)
- **Dart API Documentation**: [https://api.dart.dev](https://api.dart.dev)
- **DartPad (Online Editor)**: [https://dartpad.dev](https://dartpad.dev)
- **Dart Packages**: [https://pub.dev](https://pub.dev)