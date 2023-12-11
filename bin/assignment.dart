// Define the Role interface
abstract class Role {
  void displayRole();
}

// Implement the Person class
class Person implements Role {
  String name;
  int age;
  String address;

  // create Constructor class name of "Person"
  Person(this.name, this.age, this.address);

  // Getter methods
  String get getName => name;
  int get getAge => age;
  String get getAddress => address;

  // Implement the displayRole method from the Role interface
  @override
  void displayRole() {
    print("I am a generic person.");
  }
}


// create a class name of "Student" start here
class Student extends Person{

  // create a attributes class name of "Student"
  int studentID = 34556;
  String grade = 'A+';
  List <int> courseScores = [75,23,55,65];

//   create a constructor class name of Student
Student(this.studentID, this.grade, String name, int age,
    String address) : super(name, age,address);

  @override
  void displayRole() {
    print("Role: Student");
  }

  void avg(){
    // double average = 0;
    double sum = 0;
    // int i = 0;

    for( int i = 0; i <courseScores.length; i++){
      sum += courseScores[i];
    }
    double average = sum/courseScores.length;
    print("Average Score: $average");
  }
}


class Teacher extends Person{

  // create a attributes class name of "Teacher"
  int teacherID = 34556;

  List <String> courseScores = ['-Math','-Bangla','-English'];

//   create a constructor class name of "Teacher"
  Teacher(this.teacherID, String name, int age,
      String address) : super(name, age,address);

  @override
  void displayRole() {
    print("Role: Teacher");
  }

  void avg(){
    // double average = 0;
    double sum = 0;
    // int i = 0;

    for( int i = 0; i <courseScores.length; i++){
      // print("Course Taught:");
      print(courseScores[i]);
    }

  }
}

void main() {
  // Example usage
  /*Person personObj = Person("John Doe", 25, "123 Main St");

  print("Name: ${personObj.getName}");
  print("Age: ${personObj.getAge}");
  print("Address: ${personObj.getAddress}");

  personObj.displayRole(); // Output: I am a generic person.f*/


  // create a object class name of Student
  Student studentObj = Student(34556, "A+", "Alka Yagnik", 55, "New Delhi");
  studentObj.displayRole();
  print("Name: ${studentObj.getName}");
  print("Age: ${studentObj.getAge}");
  print("Address: ${studentObj.getAddress}");
  studentObj.avg();

  // create a object class name of Teacher
  Teacher teacherObj = Teacher(34556, "Udit Narayan", 65, "New Delhi");
  teacherObj.displayRole();
  print("Name: ${teacherObj.getName}");
  print("Age: ${teacherObj.getAge}");
  print("Address: ${teacherObj.getAddress}");
  print('Coures Taught');
  teacherObj.avg();
}
