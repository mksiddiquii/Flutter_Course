import 'Assignment03.dart';

void main() {
  separator(1); //Question NO.1
  /* Write a Dart program using a for loop to calculate the sum of numbers from 1 to 100 */
  int num = 0;
  for (var i = 0; i <= 100; i++) {
    num += i;
  }
  print(num);

  separator(2); // Question No.2
  /* Print all even numbers between 1 and 50 using a for loop. */
  List<int> evens = [];
  for (var i = 0; i < 50; i += 2) {
    evens.add(i);
  }
  print("All Even Nos${evens}");

  separator(3); //Question No.3
  /* Given a list of names, use a for-in loop to print each name in uppercase. */
  List<String> names = ["Kamran", "Ali", "Usman", "Aazan"];
  for (var name in names) {
    print("Uppercase: ${name.toUpperCase()}");
  }

  separator(4); //Question No.4
  /* Write a program to print the multiplication table of a given number (e.g., 5). */
  print_Table(x) {
    for (var i = 0; i <= 10; i++) {
      print("$x X $i = ${x * i}");
    }
  }

  print_Table(5);

  separator(5); //Question No.5
  /* Create a function that takes two numbers and an operator (+, -, *, /) and returns the result. */
  calulatePrint(int num1, int num2, String oper) {
    if (oper == "+") {
      print("Your answer is : ${num1 + num2}");
    } else if (oper == "-") {
      print("Your answer is: ${num1 - num2}");
    } else if (oper == "*") {
      print("Your answer is: ${num1 * num2}");
    } else if (oper == "/") {
      print("Your answer is: ${num1 / num2}");
    } else {
      print("Invalid operator!");
    }
    ;
  }

  ;

  calulatePrint(6, 8, "+");
  calulatePrint(6, 8, "-");
  calulatePrint(6, 8, "*");
  calulatePrint(6, 8, "/");
  separator(6); //Question NO.06
  /*Write a function that takes an integer and returns whether it is even or odd. */
  findEvenOrOdd(int number) {
    if (number % 2 == 0) {
      print("Your entered Number $number is Even");
    } else {
      print("Your entered Number $number is Odd");
    }
  }

  findEvenOrOdd(7);

  separator(7); //Question NO.07
  /* Given a list of integers, use a for-in loop to find and print the maximum number. */
  List<int> nums = [2, 6, 9, 11, 0, 15, 3, 19, 6];
  int maxNum = (0);
  for (var num in nums) {
    if (maxNum < num) {
      maxNum = num;
    }
  }
  print(maxNum);

  separator(8); //Question NO.08
  /* Write a function that calculates the factorial of a number using a for loop. */
  int result = (1);
  factorial(int num) {
    for (var i = 1; i <= num; i++) {
      result *= i;
    }
    print("Factorial of $num is $result");
  }

  factorial(4);

  separator(9); //Question NO.09
  /* Write a program that reverses a string using a for loop. */
  reverseString(String words) {
    String reversed = "";
    for (var i = words.length - 1; i >= 0; i--) {
      reversed += words[i];
    }
    print(reversed);
  }

  reverseString("Kami");
  separator(10); //Question NO.010
  /* Create a function that takes a string and counts the number of vowels using a for-in loop. */
  findVowels(String sentence) {
    int vowels = 0;
    for (var i = 0; i < sentence.length; i++) {
      if (sentence.toLowerCase()[i] == "a" || sentence.toLowerCase()[i] == "e" || sentence.toLowerCase()[i] == "i" || sentence.toLowerCase()[i] == "o" || sentence.toLowerCase()[i] == "u") {
        vowels += 1;
      }
    }
    print(vowels);
  }

  findVowels("A squeaky, queueing, audio-loving, miaoued, eutopic zooaea");
}
