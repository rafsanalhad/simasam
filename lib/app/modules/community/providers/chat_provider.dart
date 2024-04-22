import 'package:get/get.dart';
import 'package:simasam/app/data/api.dart';
import 'package:simasam/app/data/chat_model.dart';

class ChatProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.baseUrl = API.CHAT_URL;
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return Chat.fromJson(map);
      if (map is List) {
        return map.map((item) => Chat.fromJson(item)).toList();
      }
    };
  }

  Future<List<Chat>> getNewMessage(String time) async {
    final response = await post('/new-message', {'time': time});
    return response.body;
  }
}
