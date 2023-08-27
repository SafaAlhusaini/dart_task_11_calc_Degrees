import 'dart:io';

void main() {
  List<double> degrees = [];
  double total = 0.0;

  print("enter your grades for 5 subjects :");
  for (int i = 1; i < 6; i++) {
    print("$i  grade : ");
    double? grade = double.tryParse(stdin.readLineSync()!);
    degrees.add(grade!);
    total += grade;
  }

  double pre = total / 5;
  print(pre);
  calcDegreses(pre);
}

void calcDegreses(double pre) {
  if (pre >= 90 && pre <= 100) {
    print("Grade is A");
  } else if (pre >= 80 && pre <= 89) {
    print("Grade is B");
  } else if (pre >= 70 && pre <= 79) {
    print("Grade is C");
  } else {
    print("you have to retake the sem");
  }
}
