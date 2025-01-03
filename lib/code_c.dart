abstract class Role {
  void displayRole(); 
}

class Person implements Role {
  final String name;
  final int age;
  final String address;
  final Role role; 

  Person({
    required this.name,
    required this.age,
    required this.address,
    required this.role,
  });

  @override
  void displayRole() {
    role.displayRole(); 
  }
}

class Student extends Person {
  final String studentID;
  final String grade;
  final List<double> courseScores;

  Student({
    required super.name,
    required super.age,
    required super.address,
    required this.studentID,
    required this.grade,
    required this.courseScores,
  }) : super(role: StudentRole());

  @override
  void displayRole() {
    print('--- Student Details ---');
    print('Name: $name');
    print('Age: $age');
    print('Address: $address');
    print('Student ID: $studentID');
    print('Grade: $grade');
    print('Role: Student');
  }

  double calculateAverageScore() {
    if (courseScores.isEmpty) return 0.0;
    return courseScores.reduce((a, b) => a + b) / courseScores.length;
  }
}

class StudentRole implements Role {
  @override
  void displayRole() {
    print('Role: Student');
  }
}

void main() {
  Student student = Student(
    name: 'Ahammod Sarif',
    age: 20,
    address: 'Dewangonj, Jamalpur',
    studentID: 'CS12345',
    grade: 'A',
    courseScores: [85.5, 90.0, 88.5, 92.0],
  );

  student.displayRole();
  double averageScore = student.calculateAverageScore();
  print('Average Course Score: ${averageScore.toStringAsFixed(2)}');
}
