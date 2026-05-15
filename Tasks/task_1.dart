import 'dart:io';

void main() {
  print("Enter your name: ");
  String name = stdin.readLineSync()!;
  print("Please enter your mark: ");
  double mark = double.parse(stdin.readLineSync()!);

  if (mark >= 95 && mark <= 100) {
    print("$name \n  Congratulations you got a A+");
  } else if (mark >= 90 && mark < 95) {
    print("$name \n Congratulations you got a A");
  } else if (mark >= 85 && mark < 90) {
    print("$name \n Congratulations you got a B+");
  } else if (mark >= 80 && mark < 85) {
    print("$name \n Congratulations you got a B");
  } else if (mark >= 75 && mark < 80) {
    print("$name \n Congratulations you got a C+");
  } else if (mark >= 70 && mark < 75) {
    print("$name \n Congratulations you got a C");
  } else if (mark >= 65 && mark < 70) {
    print("$name \n Congratulations you got a D+");
  } else if (mark >= 60 && mark < 65) {
    print("$name \n Congratulations you got a  D");
  } else {
    print("Sorry $name, you failed the exam.");
  }
}
