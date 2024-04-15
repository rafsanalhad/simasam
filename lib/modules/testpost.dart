import 'dart:convert';
import 'package:http/http.dart' as http;

class TestPost {
  String id = '';
  String name = '';
  String job = '';
  String created = '';

  TestPost({required this.id, required this.name, required this.job, required this.created});

  factory TestPost.createPost(Map<String, dynamic> object){
    return TestPost(
      id: object['id'],
      name: object['name'],
      job: object['job'],
      created: object['createdAt']
    );
  }

  static Future<TestPost> connectToApi(String name, String job) async {
    String apiURL = 'https://reqres.in/api/users';
    var response = await http.post(Uri.parse(apiURL), body: {
      'name': name,
      'job': job
    });
    if (response.statusCode == 201) {
      final jsonData = json.decode(response.body);
      return TestPost.createPost(jsonData);
    } else {
      throw Exception('Failed to connect to API');
    }
  }
}