void main() {
  void separator(Q) {
    print("=" * 50);
    print("Question No.$Q");
    print("=" * 50);
  }

  separator(1); //Question NO.1
  /* Q.1 :Write a program to read temperature in centigrade and display a suitable message according to temperature:
You have num variable temperature = 42;
Now print the message according to temperature:
temp < 0 then Freezing weather
temp 0-10 then Very Cold weather
temp 10-20 then Cold weather
temp 20-30 then Normal in Temp
temp 30-40 then Its Hot
temp >=40 then Its Very Hot */
  int temperature = 42;
  String weatherReport;
  if (temperature < 0) {
    weatherReport = ("Freezing Weather");
  } else if (temperature <= 10) {
    weatherReport = ("Very Cold Weather");
  } else if (temperature <= 20) {
    weatherReport = ("Cold Weather");
  } else if (temperature <= 30) {
    weatherReport = ("Normal in Temp");
  } else if (temperature <= 40) {
    weatherReport = ("Its Hot");
  } else {
    weatherReport = ("Its Very Hot");
  }
  print("Temperature is $temperature => Condition is $weatherReport");

  
  separator(2);
  /* Q.2:Take two variables and store age then using if/else condition to determine oldest and youngest among them. */

  int age1 = 25;
  int age2 = 32;

  if (age1 > age2) {
    print("Age1 ($age1) is the oldest");
    print("Age2 ($age2) is the youngest");
  } else if (age2 > age1) {
    print("Age2 ($age2) is the oldest");
    print("Age1 ($age1) is the youngest");
  } else {
    print("Both are the same age: $age1");
  }


  separator(3);
  /* Q.3: A student will not be allowed to sit in exam if his/her attendance is less than 75%. Create integer variables and assign value:
Number of classes held = 16,
Number of classes attended = 10,
and print percentage of class attended.
Is student is allowed to sit in exam or not? */
  int totalClass = 16;
  int attendance = 10;
  double percentage = attendance / totalClass * 100;
  if (percentage >= 75) {
    print(
      "Your Percentage is $percentage which is  above the 75%, you are allowed to sit in Exam",
    );
  } else {
    print(
      "Your Percentage is $percentage which is not above the 75%, you are not allowed to sit in Exam",
    );
  }


  separator(4);
  /* Q.4: Create a variable marks and assign any integer value between 0 and 100. Then use if/else conditions to assign a grade:Marks >= 90: Grade A
Marks >= 80 and < 90: Grade B
Marks >= 70 and < 80: Grade C
Marks >= 60 and < 70: Grade D
Marks < 60: Grade F */
  int marks = 85;
  String grade;

  if (marks >= 90) {
    grade = "A";
  } else if (marks >= 80) {
    grade = "B";
  } else if (marks >= 70) {
    grade = "C";
  } else if (marks >= 60) {
    grade = "D";
  } else {
    grade = "F";
  }
  print("Marks: $marks => Grade: $grade");


  separator(5);
  /* Q.5:Create a list of names and print all names using list. */
  List<String> names = ["Kamran", "Ali", "Aazan", "Usman", "Arshman"];
  print(names);
  print("At Index 0 is ${names[0]}");
  print("At Index 1 is ${names[1]}");
  print("At Index 2 is ${names[2]}");
  print("At Index 4 is ${names[3]}");
  print("At Index 3 is ${names[4]}");


  separator(6);
  /* Q.6: Create a list of Days and print only  Sunday */
  List<String> days = [
    "Monday",
    "Tuesday",
    "Wednesday",
    "Thursday",
    "Friday",
    "Saturday",
    "Sunday",
  ];
  print(days[6]);
  print(days.last);
  print(days[days.length - 1]);
  separator(7);
  List<Map<String, dynamic>> students = [
    {
      "Name": "Kamran",
      "Class": "10-A",
      "RollNo": 1,
      "Grade": "A",
      "Percentage": 92.5,
    },
    {
      "Name": "Ali",
      "Class": "10-A",
      "RollNo": 2,
      "Grade": "B",
      "Percentage": 85.0,
    },
    {
      "Name": "Aazan",
      "Class": "10-A",
      "RollNo": 3,
      "Grade": "C",
      "Percentage": 74.3,
    },
    {
      "Name": "Usman",
      "Class": "10-A",
      "RollNo": 4,
      "Grade": "D",
      "Percentage": 62.8,
    },
    {
      "Name": "Arshman",
      "Class": "10-A",
      "RollNo": 5,
      "Grade": "F",
      "Percentage": 45.0,
    },
  ];
  print(students[2]);
  print(students[0]["Name"]);
  print("""  Name :${students[0]["Name"]}
  Class :${students[0]["Class"]}
  RollNo :${students[0]["RollNo"]}
  Grade : ${students[0]["Grade"]}
  Percentage : ${students[0]["Percentage"]}
    """);


  separator(8);
  /* Q.8: Create a list of numbers & write a program to get the smallest & greatest number from a list. */
  List<int> numbers = [31, -5, 99, 67, 1, 89, 451, 45, 12, -98];

  numbers.sort();

  int smallest = numbers.first;
  int greatest = numbers.last;

  print("List: $numbers");
  print("Smallest: $smallest");
  print("Greatest: $greatest");


  separator(9);
  /* Q.9: Given a list of integers, write a dart code that returns the maximum value from the list. */
  List<int> num = [31, -5, 99, 67, 1, 89, 451, 45, 12, -98];
  num.sort();
  print("List: $num");
  print("Maxiumum Value :${num.last}");


  separator(10);
  /* Q.10: remove all false values from below list by using removeWhere or retainWhere property.
List<String> usersEligibility = ['John', 'Alice', 'eligible', 'Mike', 'Sarah', 'Tom'];
 */
  List<String> usersEligibility = [
    'John',
    'Alice',
    'eligible',
    'Mike',
    'Sarah',
    'Tom',
  ];
  usersEligibility.removeWhere((i) => i != "eligible");
  print(
    "Eligible Value in list after Remove those are not eligible ${usersEligibility}",
  );
  List<String> usersEligibility1 = [
    'John',
    'Alice',
    'eligible',
    'Mike',
    'Sarah',
    'eligible',
    'Tom',
    'eligible',
  ];
  usersEligibility1.retainWhere((i) => i == "eligible");
  print("Retain Only Values in lists those are eligible ${usersEligibility1}");
}
