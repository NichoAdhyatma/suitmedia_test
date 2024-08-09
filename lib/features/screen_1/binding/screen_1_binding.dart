import 'package:get/get.dart';

import '../controller/screen_1_controller.dart';

class Screen1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Screen1Controller>(() => Screen1Controller());
  }
}
