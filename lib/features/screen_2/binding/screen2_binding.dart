import 'package:get/get.dart';

import '../controller/screen_2_controller.dart';

class Screen2Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Screen2Controller>(() => Screen2Controller());
  }
}