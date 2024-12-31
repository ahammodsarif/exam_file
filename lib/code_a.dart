// Define the abstract Role class
abstract class Role {
  void displayRole(); // Abstract method to be implemented by subclasses
}

// Implement the Role class in the Student class
class Student extends Role {
  final String name;

  Student(this.name);

  @override
  void displayRole() {
    print('Role: Student');
    print('Name: $name');
  }
}

// Implement the Role class in the Teacher class
class Teacher extends Role {
  final String name;

  Teacher(this.name);

  @override
  void displayRole() {
    print('Role: Teacher');
    print('Name: $name');
  }
}

// Main function to test the implementation
void main() {
  Role student = Student('Ahammod Sarif');
  Role teacher = Teacher('Mr. Karim');

  // Display roles
  student.displayRole();
  print('---');
  teacher.displayRole();
}
