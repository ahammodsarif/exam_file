abstract class Role {
  void displayRole(); 
}

class Student extends Role {
  final String name;

  Student(this.name);

  @override
  void displayRole() {
    print('Role: Student');
    print('Name: $name');
  }
}

class Teacher extends Role {
  final String name;

  Teacher(this.name);

  @override
  void displayRole() {
    print('Role: Teacher');
    print('Name: $name');
  }
}
void main() {
  Role student = Student('Ahammod Sarif');
  Role teacher = Teacher('Mr. Karim');

  student.displayRole();
  print('---');
  teacher.displayRole();
}
