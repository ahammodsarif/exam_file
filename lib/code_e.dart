// Define the Role abstract class
abstract class Role {
  void displayRole(); // Abstract method
}

// Define the Person class
class Person implements Role {
  final String name;
  final int age;
  final String address;
  final Role role; // Reference to Role

  // Constructor
  Person({
    required this.name,
    required this.age,
    required this.address,
    required this.role,
  });

  // Implement Role method
  @override
  void displayRole() {
    role.displayRole(); // Delegate to the role
  }
}

// Define the Student class that extends Person
class Student extends Person {
  final String studentID;
  final String grade;
  final List<double> courseScores;

  // Constructor
  Student({
    required super.name,
    required super.age,
    required super.address,
    required this.studentID,
    required this.grade,
    required this.courseScores,
  }) : super(role: StudentRole());

  // Override the displayRole() method
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

  // Method to calculate average course score
  double calculateAverageScore() {
    if (courseScores.isEmpty) return 0.0;
    return courseScores.reduce((a, b) => a + b) / courseScores.length;
  }
}

// Define the Teacher class that extends Person
class Teacher extends Person {
  final String teacherID;
  final List<String> coursesTaught;

  // Constructor
  Teacher({
    required super.name,
    required super.age,
    required super.address,
    required this.teacherID,
    required this.coursesTaught,
  }) : super(role: TeacherRole());

  // Override the displayRole() method
  @override
  void displayRole() {
    print('--- Teacher Details ---');
    print('Name: $name');
    print('Age: $age');
    print('Address: $address');
    print('Teacher ID: $teacherID');
    print('Role: Teacher');
  }

  // Method to display courses taught
  void displayCoursesTaught() {
    if (coursesTaught.isEmpty) {
      print('No courses taught.');
    } else {
      print('Courses Taught:');
      for (var course in coursesTaught) {
        print('- $course');
      }
    }
  }
}

// Define the Role classes for Student and Teacher
class StudentRole implements Role {
  @override
  void displayRole() {
    print('Role: Student');
  }
}

class TeacherRole implements Role {
  @override
  void displayRole() {
    print('Role: Teacher');
  }
}

// Define the StudentManagementSystem class
class StudentManagementSystem {
  // Main method
  static void main() {
    // Create a Student instance
    Student student = Student(
      name: 'Ahammod Sarif',
      age: 20,
      address: 'Dewangonj, Jamalpur',
      studentID: 'CS12345',
      grade: 'A',
      courseScores: [85.5, 90.0, 88.5, 92.0],
    );

    // Create a Teacher instance
    Teacher teacher = Teacher(
      name: 'Mr. Karim',
      age: 35,
      address: 'Dhaka, Bangladesh',
      teacherID: 'T12345',
      coursesTaught: ['Mathematics', 'Physics', 'Computer Science'],
    );

    // Display roles and details
    student.displayRole();
    print('Average Score: ${student.calculateAverageScore().toStringAsFixed(2)}');
    print('---');
    teacher.displayRole();
    teacher.displayCoursesTaught();
  }
}

// Run the main method
void main() {
  StudentManagementSystem.main();
}
