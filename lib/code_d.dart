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

// Define the Teacher class that extends Person
class Teacher extends Person {
  final String teacherID;
  final List<String> coursesTaught;

  // Constructor
  Teacher({
    required String name,
    required int age,
    required String address,
    required this.teacherID,
    required this.coursesTaught,
  }) : super(name: name, age: age, address: address, role: TeacherRole());

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

  // Method to display courses taught by the teacher
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

// Define the TeacherRole class to represent the role
class TeacherRole implements Role {
  @override
  void displayRole() {
    print('Role: Teacher');
  }
}

// Main function to test the implementation
void main() {
  // Create a Teacher instance
  Teacher teacher = Teacher(
    name: 'Mr. Karim',
    age: 35,
    address: 'Dhaka, Bangladesh',
    teacherID: 'T12345',
    coursesTaught: ['Mathematics', 'Physics', 'Computer Science'],
  );

  // Display teacher details
  teacher.displayRole();

  // Display courses taught
  print('---');
  teacher.displayCoursesTaught();
}
