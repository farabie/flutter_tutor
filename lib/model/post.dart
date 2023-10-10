import 'dart:convert';
import 'package:http/http.dart' as http;

class Post {
  String id, title, body;

  Post({required this.id, required this.title, required this.body});

  factory Post.createPost(Map<String, dynamic> object) {
    return Post(id: object['id'], title: object['title'], body: object['body']);
  }

  static Future<List<Post>> connectToApi(int start, int limit) async {
    var apiURL = Uri(
      path:
          "https://jsonplaceholder.typicode.com/posts?_start=$start&_limit=$limit",
    );
    var apiResult = await http.get(apiURL);
    var jsonObject = json.decode(apiResult.body) as List;

    //Map dari list of berita menjadi list of post
    return jsonObject
        .map<Post>((item) => Post(
            id: item["id"].toString(),
            title: item["title"],
            body: item["body"]))
        .toList();
  }
}
