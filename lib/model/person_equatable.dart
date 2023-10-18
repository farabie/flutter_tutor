import 'package:equatable/equatable.dart';

class Orang {}

//Ini kondisi jika kelas person sudah extends kelas lain
class PersonEquatable extends Orang with EquatableMixin {
  //Fungsi equatable yaitu membuat object itu untuk bagian properties nya setara
  String name;
  int age;

  PersonEquatable({this.name = "no name", this.age = 0});

  @override
  List<Object?> get props => [name, age];
}
