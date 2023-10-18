import 'package:equatable/equatable.dart';

class PersonMockito extends Equatable {
  final int id;
  final String name;
  final int age;
  // final http.Client? client;

  PersonMockito({
    this.id = 0,
    this.name = "no name",
    this.age = 0,
    // this.client,
  });

  factory PersonMockito.fromJson(Map<String, dynamic> json) {
    return PersonMockito(
      id: json['id'],
      name: json['name'],
      age: json['age'],
    );
  }

  @override
  List<Object?> get props => [
        id,
        name,
        age,
        // client,
      ];
}
