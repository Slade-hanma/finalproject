// entity.dart
enum Status {
  greatGrandParents,
  grandParents,
  mother,
  father,
  uncle,
  auntie,
  husband,
  wife,
  son,
  daughter,
  brother,
  sister,
  niece,
  nephew,
  inLaw,
}

enum Gender {
  male,
  female,
}

class Entity {
   String name;
   int age;
   Gender gender;
   String birthday;
   String phoneNumber;
   Status status;


  Entity({
    required this.name,
    required this.age,
    required this.gender,
    required this.birthday,
    required this.phoneNumber,
    required this.status,
    
  });
}
