void main() {
  List<int> number = [10, 2, 9, 11, 16, 14, 19, 19];
  print(number);
  number.sort();
  print(number);
  number = number.reversed.toList(); // return in list
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
}
