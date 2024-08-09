import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:suitmedia_msib/core/commons/app_bar.dart';
import 'package:suitmedia_msib/core/themes/app_pallete.dart';
import 'package:suitmedia_msib/core/utils/padding.dart';
import 'package:suitmedia_msib/features/screen_2/controller/screen_2_controller.dart';
import 'package:suitmedia_msib/routes/routes.dart';

class Screen2 extends GetView<Screen2Controller> {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar("Second Screen"),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 16,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Welcome',
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
                Text(
                  controller.name ?? "Input Name on First Page...",
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            Expanded(
              child: Center(
                child: Obx(() {
                  return Text(
                    controller.selectedName.value.isEmpty
                        ? "Selected User Name"
                        : controller.selectedName.value,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                  );
                }),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed(Routes.screen3);
              },
              child: const Text(
                'Choose a User',
                style: TextStyle(
                  color: AppPallete.whiteColor,
                ),
              ),
            ),
            16.heightBox,
          ],
        ),
      ),
    );
  }
}
