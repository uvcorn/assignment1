void main(){
  // Student Information
  Student student = Student("Shadhin Ali", 21, "Chuadanga", [90, 85, 82]);
  print("Student Information:");
  student.displayRole();
  print("Name: ${student.name}");
  print("Age: ${student.age}");
  print("Address: ${student.address}");
  print("Average Score: ${student.calculat1()}");


  print("");
  print("****************");
  print("");

  // Teacher Information
  Teacher teacher = Teacher
    ("Satoshi nakamoto", 49, "San Francisco, California, USA", ["Blockchain", "DeFi", "NFT"]);
  print("Teacher Information:");
  teacher.displayRole();
  print("Name: ${teacher.name}");
  print("Age: ${teacher.age}");
  print("Address: ${teacher.address}");
  print("Courses Taught:");
  teacher.coursesTaught.forEach((course) => print("- $course"));
}


abstract class Role{
  void displayRole();

}

class Person {
  String name;
  int age;
  String address;
  Person(this.name,this.age,this.address);
  @override
  void displayRole(){
    // This method is overridden in subclasses
  }

}
class Student extends Person{
  List<double> scores;
  Student(String name, int age, String address,this.scores)
  :super(name,age,address);
  @override
  void displayRole() {
    print("Role: Student");
  }

  double calculat1(){
    if (scores.isEmpty){
      return 0.0;
    }
    return scores.reduce((value, element) => value + element) / scores.length;
  }
}

class Teacher extends Person{
  List<String> coursesTaught;
  Teacher (String name, int age, String adddress,this.coursesTaught)
  :super(name,age,adddress);

  @override
  void displayRole() {
    print("Role: Teacher");
  }
}