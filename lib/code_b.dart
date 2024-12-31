// Define the Role abstract class
abstract class Role {
  void displayRole(); // Abstract method to be implemented
}

// Define the Person class
class Person implements Role {
  final String name;
  final int age;
  final String address;
  final Role role; // Reference to the Role interface

  // Constructor
  Person({
    required this.name,
    required this.age,
    required this.address,
    required this.role,
  });

  // Getter methods
  String get getName => name;
  int get getAge => age;
  String get getAddress => address;

  // Implementing the Role abstract method
  @override
  void displayRole() {
    print('--- Person Details ---');
    print('Name: $name');
    print('Age: $age');
    print('Address: $address');
    role.displayRole(); // Delegate role-specific behavior
  }
}

// Define the Student class
class Student implements Role {
  @override
  void displayRole() {
    print('Role: Student');
  }
}

// Define the Teacher class
class Teacher implements Role {
  @override
  void displayRole() {
    print('Role: Teacher');
  }
}

// Main function to test the implementation
void main() {
  // Create instances of Person with specific roles
  Person student = Person(
    name: 'Ahammod Sarif',
    age: 20,
    address: 'Dewangonj, Jamalpur',
    role: Student(),
  );

  Person teacher = Person(
    name: 'Mr. Karim',
    age: 35,
    address: 'Dhaka, Bangladesh',
    role: Teacher(),
  );

  // Display details
  student.displayRole();
  print('---');
  teacher.displayRole();
}
