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
    required String name,
    required int age,
    required String address,
    required this.studentID,
    required this.grade,
    required this.courseScores,
  }) : super(name: name, age: age, address: address, role: StudentRole());

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

// Define the StudentRole class to represent the role
class StudentRole implements Role {
  @override
  void displayRole() {
    print('Role: Student');
  }
}

// Main function to test the implementation
void main() {
  // Create a Student instance
  Student student = Student(
    name: 'Ahammod Sarif',
    age: 20,
    address: 'Dewangonj, Jamalpur',
    studentID: 'CS12345',
    grade: 'A',
    courseScores: [85.5, 90.0, 88.5, 92.0],
  );

  // Display student details
  student.displayRole();

  // Calculate and display average score
  double averageScore = student.calculateAverageScore();
  print('Average Course Score: ${averageScore.toStringAsFixed(2)}');
}
