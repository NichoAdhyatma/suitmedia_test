import 'package:get/get.dart';
import 'package:suitmedia_msib/features/screen_1/view/screen_1.dart';
import 'package:suitmedia_msib/features/screen_1/binding/screen_1_binding.dart';
import 'package:suitmedia_msib/features/screen_2/binding/screen2_binding.dart';
import 'package:suitmedia_msib/features/screen_2/views/screen_2.dart';
import 'package:suitmedia_msib/features/screen_3/binding/screen_3_binding.dart';
import 'package:suitmedia_msib/features/screen_3/view/screen_3.dart';

abstract class Routes {
  static const String screen1 = '/';
  static const String screen2 = '/screen2';
  static const String screen3 = '/screen3';
}

var routes = [
  GetPage(
    name: Routes.screen1,
    binding: Screen1Binding(),
    page: () => const Screen1(),
  ),
  GetPage(
    name: Routes.screen2,
    binding: Screen2Binding(),
    page: () => const Screen2(),
  ),
  GetPage(
    name: Routes.screen3,
    binding: Screen3Binding(),
    page: () => const Screen3(),
  ),
];
