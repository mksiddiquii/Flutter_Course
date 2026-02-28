void main() {
  print("=" * 50);
  print("Question No.1");
  print("=" * 50);
  /*  Q.1: Create two integer variables length and breadth and assign values then check if they are square values or rectangle values.
i.e: if both values are equal then it's square otherwise rectangle. */

  int length = 25;
  int breadth = 30;

  if (length == breadth) {
    print(
      'Breadth is $breadth and length is $length, Both are Equal than It is Square ');
  } else {
    print(
      'Breadth is $breadth and Lenght is $length, Both are not Equal than It is Rectangle ');
  }
  print("=" * 50);
  print("Question No.2");
  print("=" * 50);
  /* Q.2: Take two variables and store age then using if/else condition to determine oldest and youngest among them. */
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

  print("=" * 50);
  print("Question No.3");
  print("=" * 50);

  /* Q.3: Write a Dart program to check if a given number is positive, negative, or zero.
 */
  int number = -10;

  if (number > 0) {
    print("$number is a Positive number");
  } else if (number < 0) {
    print("$number is a Negative number");
  } else {
    print("Number is Zero");
  }
}
