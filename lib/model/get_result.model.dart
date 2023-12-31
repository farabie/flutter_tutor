import 'package:http/http.dart' as http;
import 'dart:convert';

class User {
  String id;
  String name;

  User({required this.id, required this.name});

  factory User.createUser(Map<String, dynamic> object) {
    return User(
      id: object['id'].toString(),
      name: object['first_name'] + " " + object['last_name'],
    );
  }

  //Untuk get itu cuman butuh id saja
  static Future<User> connectToApi(String id) async {
    var baseUrl = "https://reqres.in/api/users/$id";
    var apiUrl = Uri.parse(baseUrl);

    var apiResult = await http.get(apiUrl);
    //Ini sudah dapat tapi baru yang ini nya saja {}
    //untuk yang {
    //  'data' : [ -> ini perlu kita casting lagi
    //
    // ]
    //}

    var jsonObject = json.decode(apiResult.body);
    var userData = (jsonObject as Map<String, dynamic>)['data'];

    return User.createUser(userData);
  }
}
