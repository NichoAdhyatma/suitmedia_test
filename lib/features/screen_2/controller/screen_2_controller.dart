import 'package:get/get.dart';

class Screen2Controller extends GetxController {
  String? name;
  RxString selectedName = ''.obs;

  @override
  void onInit() {
    super.onInit();
    dynamic arguments = Get.arguments;
    if (arguments is String && arguments.isNotEmpty) {
      name = arguments;
    }
  }

}
