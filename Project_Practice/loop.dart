
void main() {
  int n = 5;
  for (var i = 1; i <= n; i++) {
    print("*" * i);
  }
  print("=" * 20);
  for (var i = n; i >= 1; i--) {
    print("*" * i);
  }
  print("=" * 20);
  for (var i = 1; i <= n; i++) {
    print(" " * (n - i) + "*" * i);
  }

  print("=" * 20);
  for (var i = n; i >= 1; i--) {
    print(" " * (n - i) + "*" * i);
  }
  print("=" * 20);
  for (var i = 1; i <= n; i++) {
    print(' ' * (n - i) + '* ' * i);
  }
  print("=" * 20);
  for (var i = 1; i <= n; i++) {
    print(' ' * (n - i) + '* ' * i);
  }
  for (var i = n-1; i >= 1; i--) {
    print(" " * (n - i) + "* " * i);
  }
}
