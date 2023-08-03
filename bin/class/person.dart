class Person{
  String name;
  int age;
  bool isAuthenticated;


  Person(this.name, this.age, this.isAuthenticated);

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'age': age,
      'isAuthenticated': isAuthenticated,
    };
  }
}