import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_tutor/model/person.dart';

void main() {
  group("Mengecek Class Person", () {
    Person p;
    p = Person();
    test("Inisialisasi Object Person", () {
      print("Test 1");
      expect(p.name, equals("no name"));
      expect(p.age, equals(0));
    });
    test("agenya harus positif", () {
      print("Test 2");
      p.age = -5;
      expect(p.age, isPositive);
    });

    test("Angka Keberuntungan harus 3 buah bilangan positif", () {
      expect(p.luckyNumbers,
          allOf([hasLength(equals(3)), isNot(anyElement(isNegative))]));
    });
  });

  setUp(() {
    //Setup ini digunakan untuk persiapan
    //Misalnya untuk mempersiapkan database sebelum melakukan test
    print("Set Up");
  });

  tearDown(() {
    //Teardown ini menutup
    //Misalnya jika sudah digunakan database nya baik itu testnya
    //Berhasil atau tidak makan databasenya harus ditutup
    print("Tear Down");
  });
}
