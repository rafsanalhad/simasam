import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:simasam/app/data/api.dart';
import 'package:simasam/app/data/chat_model.dart';
import 'package:simasam/app/modules/community/providers/chat_provider.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;

class CommunityController extends GetxController {
  late IO.Socket socket;
  final textController = TextEditingController().obs;
  final scrollController = ScrollController().obs;
  final listMessage = <Chat>[].obs;
  final chatProvider = Get.put(ChatProvider());

  @override
  void onInit() async {
    super.onInit();
    socket = IO.io(API.CHAT_URL, <String, dynamic>{
      'transports': ['websocket'],
      'autoConnect': true,
    });
    socket.connect();
    // get storage message
    final messages = await GetStorage().read('messages');
    if (messages != null) {
      //   check type of messages
      if (messages is List<Chat>) {
        listMessage.value = messages;
      } else {
        // listMessage.addAll(messages);
        messages.map((e) {
          listMessage.add(Chat.fromJson({
            'username': e['username'],
            'name': e['name'],
            'message': e['message'],
            'time': e['time'],
          }));
        }).toList();
      }
    }
    socket.onConnect((_) {
      openListener();
    });
    scrollToBottomNoAnimation();
    getNewMessage();
  }

  void sendMessage() {
    if (textController.value.text != '') {
      // create message from Chat model
      final data = {
        'username': 'edo',
        'name': 'edo',
        'message': textController.value.text,
        'time': DateTime.now().toString(),
      };
      socket.emitWithAck('message', data);

      // add message to list
      listMessage.add(Chat.fromJson(data));

      // save message to storage as json
      GetStorage().write('messages', listMessage);
    }
    // clear text field
    textController.value.clear();
    scrollToBottom();
  }

  void openListener() {
    socket.on('message', (data) {
      listMessage.add(Chat.fromJson(data));
      GetStorage().write('messages', listMessage);
      scrollToBottom();
    });
  }

  void scrollToBottom() {
    Future.delayed(const Duration(milliseconds: 100), () {
      scrollController.value.animateTo(
        scrollController.value.position.maxScrollExtent,
        duration: const Duration(milliseconds: 100),
        curve: Curves.easeOut,
      );
    });
  }

  void scrollToBottomNoAnimation() {
    Future.delayed(const Duration(milliseconds: 50), () async {
      //   set position to max scroll extent
      scrollController.value
          .jumpTo(scrollController.value.position.maxScrollExtent);
    });
  }

  void getNewMessage() async {
    Future.delayed(const Duration(milliseconds: 100), () async {
      //   get time last message from list
      final time = listMessage.isNotEmpty ? listMessage.last.time : '';
      if (time == '') {
        return;
      }
      List<Chat> response = await chatProvider.getNewMessage(time!);
      for (var element in response) {
        listMessage.add(Chat.fromJson({
          'username': element.username,
          'name': element.name,
          'message': element.message,
          'time': element.time,
        }));
      }
    });
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    //   close socket
    socket.dispose();
  }
}
