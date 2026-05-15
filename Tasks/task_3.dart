import 'dart:io';

Set<String> students = {};

void addstudent(String name) {
  students.add(name);
}

void printStudents(List<String> List, [int index = 0]) {
  if (index >= List.length) {
    return;
  }
  print(List[index]);
  printStudents(List, index + 1);
}

Map<String, List<Map<String, dynamic>>> course = {};

void addCourse(String studentName, String courseName, [double grade = 0]) {
  course.putIfAbsent(studentName, () => []);
  course[studentName]!.add({'course': courseName, 'grade': grade});
}

double averageGrade(String studentName) {
  final courses = course[studentName] ?? [];
  if (courses.isEmpty) return 0.0;
  final sum = courses.fold<double>(
    0.0,
    (acc, entry) => acc + (entry['grade'] as double),
  );
  return sum / courses.length;
}

void main() {
  addstudent("abdullah ");
  addstudent("ahmed ");
  addstudent("mostafa ");

  printStudents(students.toList());

  students.forEach((name) => print("$name"));

  Set<String> newstudents = {"Ali", "Omar", "Youssef"};
  Set<String> allstudents = {...students, ...newstudents};
  print(allstudents);

  addCourse('Alice', 'Math', 88);
  addCourse('Alice', 'Physics', 76);
  addCourse('Alice', 'CS', 95);

  addCourse('Bob', 'English', 72);
  addCourse('Bob', 'History');

  addCourse('Carol', 'Biology', 91);
  addCourse('Carol', 'Chemistry', 68);
  course.forEach((student, courses) {
    print('$student:');

    courses.forEach(
      (c) => print('  ${(c["course"] as String).padRight(12)} ${c["grade"]}'),
    );

    print('  average  →  ${averageGrade(student).toStringAsFixed(2)}\n');
  });
}
