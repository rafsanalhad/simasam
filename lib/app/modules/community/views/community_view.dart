import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/community_controller.dart';

class CommunityView extends GetView<CommunityController> {
  CommunityView({super.key});

  @override
  final controller = Get.put(CommunityController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Community Page'),
      ),
      body: Flex(
        direction: Axis.vertical,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Flex(
                direction: Axis.vertical,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Obx(
                      () {
                        return ListView.builder(
                          itemCount: controller.listMessage.length,
                          controller: controller.scrollController.value,
                          itemBuilder: (context, index) {
                            return MessageItem(
                              username: controller.listMessage[index].username!,
                              name: controller.listMessage[index].name!,
                              message: controller.listMessage[index].message!,
                              // time: controller.messages[index]['time'],
                            );
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 70,
            alignment: Alignment.bottomCenter,
            padding: const EdgeInsets.all(8),
            child: Flex(
              direction: Axis.horizontal,
              children: [
                Expanded(
                  child: TextFormField(
                    onTap: () {
                      // wait until keyboard show up
                      Future.delayed(const Duration(milliseconds: 300), () {
                        controller.scrollToBottom();
                      });
                    },
                    controller: controller.textController.value,
                    decoration: InputDecoration(
                      labelText: 'Ketik sesuatu...',
                      labelStyle: const TextStyle(color: Colors.grey),
                      hintText: 'Masukkan teks di sini',
                      hintStyle: TextStyle(color: Colors.grey[400]),
                      prefixIcon: const Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.blue),
                      ),
                      filled: true,
                      fillColor: Colors.grey[200],
                    ),
                  ),
                ),
                const SizedBox(
                    width: 10), // Spasi antara TextField dan IconButton
                IconButton(
                  onPressed: controller.sendMessage,
                  icon: const Icon(Icons.send),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MessageItem extends StatelessWidget {
  final String username;
  final String name;
  final String message;

  // final String time;

  const MessageItem({
    super.key,
    required this.username,
    required this.name,
    required this.message,
    // required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          username == "edo" ? MainAxisAlignment.end : MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        username != "edo"
            ? ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: const Image(
                  image: AssetImage('assets/img/sampah_plastik.png'),
                  width: 35,
                  height: 35,
                  fit: BoxFit.cover,
                ),
              )
            : Container(),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: username == "edo"
              ? CrossAxisAlignment.end
              : CrossAxisAlignment.start,
          children: [
            Text(
              username == "edo" ? "You" : name,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            Container(
              constraints: BoxConstraints(
                maxWidth: Get.width - 80,
              ),
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                message,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
