import 'package:get/get.dart';

class SettingController extends GetxController {
  static SettingController to = Get.find();

  RxBool themeMode = false.obs;

  void changeTheme() {
    themeMode.toggle();
  }
}
