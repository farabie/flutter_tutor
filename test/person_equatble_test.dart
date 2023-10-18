import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_tutor/model/person_equatable.dart';

void main() {
  PersonEquatable p = PersonEquatable(
    name: "Dodi",
    age: 10,
  );

  if (p == PersonEquatable(name: "Dodi", age: 10)) {
    print("sama");
  } else {
    print("Tidak sama");
  }

  List<PersonEquatable> persons = [p];
  if (persons.contains(PersonEquatable(name: "Dodi", age: 10))) {
    print("Ada");
  } else {
    print("Tidak ada");
  }
}
