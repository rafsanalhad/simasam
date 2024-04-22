import 'package:get/get.dart';
import 'package:simasam/app/data/user_model.dart';
import 'package:simasam/app/modules/home/providers/user_provider.dart';

class HomeController extends GetxController {
  UserProvider userProvider = Get.find();
  User _user = User();
  final name = ''.obs;

  @override
  void onInit() async {
    super.onInit();
    await userProvider.getUser(1).then((value) {
      _user = value.body;
    });
    name.value = _user.data!.firstName!;
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
