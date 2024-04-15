import 'dart:convert';
import 'package:http/http.dart' as http;

class UserData {
  String id = '';
  String name = '';

  UserData({required this.id, required this.name});

  static Future<UserData> connectToApi(String id) async {
    String apiURL = 'https://reqres.in/api/users/$id';
    return await http.get(Uri.parse(apiURL)).then((response) {
      if (response.statusCode == 200) {
        var jsonData = json.decode(response.body);
        return UserData(id: jsonData['data']['id'].toString(), name: jsonData['data']['first_name'] + ' ' + jsonData['data']['last_name']);
      } else {
        throw Exception('Failed to connect to API');
      }
    });
  }
}
