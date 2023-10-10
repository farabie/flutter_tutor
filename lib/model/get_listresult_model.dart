import 'package:http/http.dart' as http;
import 'dart:convert';

class User {
  String id;
  String name;
  String email;

  User({this.id = "", this.name = "", this.email = ""});

  factory User.createUser(Map<String, dynamic> object) {
    return User(
      id: object['id'].toString(),
      name: object['first_name'] + " " + object['last_name'],
      email: object['email'],
    );
  }

  //Fungsi untuk getlist atau connect api
  static Future<List<User>> getUsers(String page) async {
    var apiURL = Uri(path: "https://reqres.in/api/users?page=$page");

    var apiResult = await http.get(apiURL);
    var jsonObject = json.decode(apiResult.body);

    //Casting dari list<dynamic> ke MAP<String, Dynamic>
    //List dynamic diambil dari key:value itu berupa List<dynamic>
    List<dynamic> listUser = (jsonObject as Map<String, dynamic>)['data'];

    List<User> users = [];
    for (int i = 0; i < listUser.length; i++) {
      users.add(User.createUser(listUser[i]));
    }

    return users;
  }
}
