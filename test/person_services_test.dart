// import 'package:http/http.dart' as http;
// import 'package:mockito/mockito.dart';
// import 'package:flutter_tutor/model/person_services.dart';
// import 'package:flutter_tutor/model/person_mockito.dart';
// import 'package:flutter_test/flutter_test.dart';

// class MockClient extends Mock implements http.Client {}

// void main() {
//   MockClient client = MockClient();

//   test("Test Ambil Data", () async {
//     String id = "1";
//     when(client.get(Uri.parse(".../persons/$id")))
//         .thenAnswer((_) async => http.Response('''
// {
//   "id" : $id,
//   "name": "Dodi",
//   "age" : 20
// }
// ''', 200));
//     PersonMockito personMockito =
//         await PersonServices.getPersonById(id, client);
//     expect(personMockito, PersonMockito(id: 1, name: "Dodi", age: 20));
//   });

//   test("Test Error", () async {
//     String id = "1";
//     when(client.get(Uri.parse(".../persons/" + id)))
//         .thenAnswer((_) async => http.Response('''
// {
//   "message": "Tidak ada akses"
// }
// ''', 403));
//     expect(PersonServices.getPersonById(id, client), throwsException);
//   });
// }
