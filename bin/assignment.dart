// create abstract class name of "Role" start here
abstract class Role{
  // create a "displayRole()" named method class name of Role
  void displayRole();
}
// "Role" class end here


// create a class name of "Person" and implement of "Role" class start here
class Person implements Role{
  String name;
  int age;
  String address;

  Person(this.name, this.age, this.address);
}
// "Person" class end here


//create a class name of "Student" start here
class Student extends Person{
  int studentID = 78986;
  String grade = 'A+';
  list <int> courseScores = [45,56,79,98];

  Student(this.studentID, this.grade, this.list);


  @override
  void displayRole(){
    print("Role: Student");
  }

  /*int avarage = 0;
  int sum = 0;
  for(int i = 0, i<courseScores.length; i++){
    sum += courseScores;
  }*/
}



void main(){

}