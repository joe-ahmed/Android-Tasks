import 'dart:io';

void main() {
  List<String> names = [];
  List<List<double>> marks = [];

  while (true) {
    print(
      '###################################HELLO###################################',
    );

    print('1:Input the data of students');
    print('2:Show the data of students');
    print("3:show the average of each student");
    print("4:srearch for student by name");
    print("5:Exit");
    print('\n\n Enter your choice : ');

    int num = int.parse(stdin.readLineSync()!);

    switch (num) {
      case 1:
        {
          print("Enter the name of student : ");
          String name = stdin.readLineSync()!;
          names.add(name);
          print("Enter the marks of student separated by space : ");
          String input = stdin.readLineSync()!;
          List<double> studentMarks = input
              .split(" ")
              .map((e) => double.parse(e))
              .toList();
          marks.add(studentMarks);
          break;
        }
      case 2:
        {
          print("The data of students : ");
          for (int i = 0; i < names.length; i++) {
            print("Name : ${names[i]} , Marks : ${marks[i]}");
          }
          break;
        }

      case 3:
        {
          print("Enter the name of student to show the average : ");
          String name = stdin.readLineSync()!;
          int index = names.indexOf(name);
          if (index != -1) {
            double average =
                marks[index].reduce((a, b) => a + b) / marks[index].length;
            print("The average of $name is : $average");
          } else {
            print("Student not found");
          }
          break;
        }
      case 4:
        {
          print("Enter the name of student to search : ");
          String name = stdin.readLineSync()!;
          int index = names.indexOf(name);
          if (index != -1) {
            print("Name : ${names[index]} , Marks : ${marks[index]}");
          } else {
            print("Student not found");
          }
          break;
        }
      case 5:
        {
          exit(0);
        }
    }
  }
}
