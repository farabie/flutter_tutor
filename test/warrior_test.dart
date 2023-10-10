import 'package:flutter_tutor/model/warrior.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';

class MockWarrior extends Mock implements Warrior {}

void main() {
  MockWarrior warrior = MockWarrior();
  Warrior w = Warrior();

  //Method verify untuk mengecek kelas verify
  test("Verify Demo", () {
    warrior.rest();
    warrior.training();
    verifyInOrder([
      warrior.rest(),
      warrior.training(),
    ]);
    // verify(warrior.rest()).called(2);
  });

  test("Null Demo", () {
    expect(w.name, equals("no name"));
    //Warrior name itu kosong
    expect(warrior.name, isNull);
    // verify(warrior.rest()).called(2);
  });

  //Percobaan untuk thenreturn demo
  //Karena isi warrior name itu kosong coba kita isi dulu dengan
  test("thenReturn Demo", () {
    //Untuk thenreturn di flutter test harus mengembalikan sebuah fungsi yang isinya string
    when(warrior.name).thenAnswer((name) => "no name");
    expect(warrior.name, equals("no name"));
  });

  //Untuk throw
  test("thenThrow", () {
    when(warrior.rest()).thenThrow(Exception("Can't sleep"));
    expect(() => warrior.rest(), throwsException);
  });

  test("thenAnswer", () async {
    when(warrior.training()).thenAnswer((_) => Future.value(true));
    bool? results = await warrior.training();
    expect(results, equals(true));
  });
}
