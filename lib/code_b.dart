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

  String get getName => name;
  int get getAge => age;
  String get getAddress => address;

  @override
  void displayRole() {
    print('--- Person Details ---');
    print('Name: $name');
    print('Age: $age');
    print('Address: $address');
    role.displayRole(); 
  }
}

class Student implements Role {
  @override
  void displayRole() {
    print('Role: Student');
  }
}


class Teacher implements Role {
  @override
  void displayRole() {
    print('Role: Teacher');
  }
}

void main() {
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

  student.displayRole();
  print('---');
  teacher.displayRole();
}
