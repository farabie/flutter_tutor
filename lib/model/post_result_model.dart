import 'package:http/http.dart' as http;
import 'dart:convert';

///Urutannya
///1. Buat class untuk menampung value dan map disini ada name, job, id, created
///2. Connect api dulu, kemudian masuk ke body nya lalu request body nya itu pakek name job
///Jika sudah dapat maka di decode(dipecah) kemudian masuk ke createpostresult
///3. Untuk menampunya di factory yang mana isinya ada Map String: key dan dynamic: value

class PostResult {
  //1. Buat class untuk modelnya
  String name;
  String job;
  String id;
  String created;

  PostResult(
      {required this.name,
      required this.job,
      required this.id,
      required this.created});

  //3. Buat Factory untuk menampung mapping dari convert jsonnya
  factory PostResult.createPostResult(Map<String, dynamic> object) {
    return PostResult(
      id: object['id'],
      name: object['name'],
      job: object['job'],
      created: object['createdAt'],
    );
  }

  //2. Get Api nya
  static Future<PostResult> connectToApi(String name, String job) async {
    var apiURL = Uri(path: "https://reqres.in/api/users");

    ///Connect Api dan menggunakan post untuk mengganti
    var apiResult = await http.post(apiURL, body: {"name": name, "job": job});
    //Yang mau di decode atau dipecahkan yaitu si body nya atau isinya
    var jsonObject = json.decode(apiResult.body);

    return PostResult.createPostResult(jsonObject);
  }
}
