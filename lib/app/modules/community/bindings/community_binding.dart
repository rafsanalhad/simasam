import 'package:get/get.dart';
import 'package:simasam/app/modules/community/providers/chat_provider.dart';

import '../controllers/community_controller.dart';

class CommunityBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CommunityController>(
      () => CommunityController(),
    );

    Get.lazyPut<ChatProvider>(
      () => ChatProvider(),
    );
  }
}
