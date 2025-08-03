///A
abstract class Role{
  void displayRole();
}

///B
class Person implements Role{
  String _name;
  int _age;
  String _address;
  Role ? role; // reference to the Role interface
  Person(this._name,this._age,this._address){

  }
  String get getName{
    return _name;
  }
  int get getAge{
    return _age;
  }
  String get getAddress{
    return _address;
  }

  @override
  void displayRole(){
    print("No Role selected yet!!!");
  }

}

///C
class Student extends Person{
  String student_id;
  String grade;
  List<double> courseScores;
  Student(super._name,super._age,super._address,this.student_id,this.grade,this.courseScores){

  }

  @override
  void displayRole() {
    print("Role: Student");
  }

  void avgScore(){
    if(courseScores.isEmpty){
      print("Average Score: 0.0");
      return;
    }

    int n = courseScores.length;
    double total = 0;
    for(double x in courseScores){
      total += x;
    }
    total = total/n;
    print("Average Score: ${total.toStringAsFixed(2)}");

  }
}

///D
class Teacher extends Person{
  String teacherID;
  List<String> coursesTaught;
  Teacher(super._name,super._age,super._address,this.teacherID,this.coursesTaught){

  }

  @override
  void displayRole() {
    print("Role: Teacher");
  }

  void taught(){
    print("Courses Taught:");

    if(coursesTaught.isEmpty){
      print("NO Courses Taught!");
      return;
    }

    for(int i=0;i<coursesTaught.length;i++){
      print("- ${coursesTaught[i]}");
    }
  }
}

///E
class StudentManagementSystem{
  //required as per instruction provided in the assignment
}

void main(){

  // As there is not clear instruction provided for user input we take default hard-coded input using constructor
  Student s = Student(
      "John Doe", 20, "123 Main Street", "XXX", "x", [90,85,82]
  );

  Teacher t = Teacher(
      "Mrs.Smith", 35, "456 Oak st.", "YYY", ["Math","English","Bangla"]
  );

  print("\n\nStudent Information:");
  s.displayRole();
  print("Name: ${s.getName}");
  print("Age: ${s.getAge}");
  print("Address: ${s.getAddress}");
  s.avgScore();

  print("\n\nTeacher Information:");
  t.displayRole();
  print("Name: ${t.getName}");
  print("Age: ${t.getAge}");
  print("Address: ${t.getAddress}");
  t.taught();


}





