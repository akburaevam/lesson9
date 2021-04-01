import 'dart:io';

void main() {
  task1();
  task2();
  task3();
}

void task1() {
  print("Enter your num");
  int a = int.parse(stdin.readLineSync()!);
  if (a.isEven) {
    var b = a ~/ 2;
    List x = [b, b];
    print(x);
  } else {
    var b = a ~/ 2;
    var c = b + 1;
    List x = [b, c];
    print(x);
  }
}

void task2() {
  int num = int.parse(stdin.readLineSync()!);
  var summ = sum(num);
  print("Sum is: ${summ}");
}

int sum(int num) {
  if (num <= 1) {
    return 1;
  } else {
    return num + sum(num - 1);
  }
}

void task3() {
  var a = stdin.readLineSync()!;
  if (a.contains('=')) {
    var b = a.split('=');
    if (int.parse(b[0]) == int.parse(b[1])) {
      print(true);
    } else
      print(false);
  } else if (a.contains('>')) {
    var b = a.split('>');
    if (int.parse(b[0]) > int.parse(b[1])) {
      print(true);
    } else
      print(false);
  } else if (a.contains('<')) {
    a.split('<');
    var b = [int.parse(a[0]), int.parse(a[1])];
    if (b[0] < b[1]) {
      print(true);
    } else
      print(false);
  }
}
