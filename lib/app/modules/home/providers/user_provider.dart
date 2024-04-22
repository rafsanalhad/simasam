import 'package:get/get.dart';
import 'package:simasam/app/data/api.dart';
import 'package:simasam/app/data/user_model.dart';

class UserProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.baseUrl = API.BASE_URL;
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return User.fromJson(map);
      if (map is List) {
        return map.map((item) => User.fromJson(item)).toList();
      }
    };
  }

  // static Future<UserData> connectToApi(String id) async {
  //   String apiURL = 'https://reqres.in/api/users/$id';
  //   return await http.get(Uri.parse(apiURL)).then((response) {
  //     if (response.statusCode == 200) {
  //       var jsonData = json.decode(response.body);
  //       return UserData(
  //           id: jsonData['data']['id'].toString(),
  //           name: jsonData['data']['first_name'] +
  //               ' ' +
  //               jsonData['data']['last_name']);
  //     } else {
  //       throw Exception('Failed to connect to API');
  //     }
  //   });
  // }
  Future<Response> getUser(int id) => get('/users/$id');
}
