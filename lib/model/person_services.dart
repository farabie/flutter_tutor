import 'dart:convert';

import 'package:flutter_tutor/model/person_mockito.dart';
import 'package:http/http.dart' as http;

class PersonServices {
  static Future<PersonMockito> getPersonById(
      String id, http.Client client) async {
    String baseUrl = ".../persons/";
    String url = baseUrl + id;

    var response = await client.get(Uri.parse(url));
    if (response.statusCode != 200) {
      throw Exception("Error");
    }
    var result = json.decode(response.body);

    return PersonMockito.fromJson(result);
  }
}
