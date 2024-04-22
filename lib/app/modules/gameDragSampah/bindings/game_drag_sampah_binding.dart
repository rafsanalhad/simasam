import 'package:get/get.dart';

import '../controllers/game_drag_sampah_controller.dart';

class GameDragSampahBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GameDragSampahController>(
      () => GameDragSampahController(),
    );
  }
}
