import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_tutor/model/person.dart';

void main() {
  Person p;
  p = Person();
  test("Inisialisasi Object Person", () {
    expect(p.name, "no name");
  });
}
