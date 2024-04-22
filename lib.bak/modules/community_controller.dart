import 'package:get_storage/get_storage.dart';

class CommunityController{
  // get storage message
  final messages = GetStorage().read('messages');
  int count = 0;

  void increment(){
    count++;
  }

  void viewCommunity(){
    print('Community viewed');
  }

  Future<void> sendMessage() async {
    print('Message sent');
  }
}