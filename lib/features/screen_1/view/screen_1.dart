import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:suitmedia_msib/core/commons/dialog.dart';
import 'package:suitmedia_msib/core/themes/app_pallete.dart';
import 'package:suitmedia_msib/core/utils/padding.dart';
import 'package:suitmedia_msib/features/screen_1/controller/screen_1_controller.dart';
import 'package:suitmedia_msib/routes/routes.dart';

class Screen1 extends GetView<Screen1Controller> {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/asset-bg.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/asset-profile.png',
                    width: 116,
                    height: 116,
                  ),
                  40.heightBox,
                  Form(
                    key: controller.formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          controller: controller.nameController,
                          decoration: const InputDecoration(
                            hintText: 'Name',
                          ),
                        ),
                        24.heightBox,
                        TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                          controller: controller.palindromeController,
                          decoration: const InputDecoration(
                            hintText: 'Palindrome',
                          ),
                        ),
                      ],
                    ),
                  ),
                  40.heightBox,
                  ElevatedButton(
                    onPressed: () {
                      if (controller.formKey.currentState!.validate()) {
                        bool result = controller
                            .isPalindrome(controller.palindromeController.text);

                        showGetxDialog(
                            result ? 'isPalindrome' : 'not palindrome');
                      }
                    },
                    child: const Text(
                      'CHECK',
                      style: TextStyle(
                        color: AppPallete.whiteColor,
                      ),
                    ),
                  ),
                  20.heightBox,
                  ElevatedButton(
                    onPressed: () {
                      Get.toNamed(
                        Routes.screen2,
                        arguments: controller.nameController.text,
                      );
                    },
                    child: const Text(
                      'NEXT',
                      style: TextStyle(
                        color: AppPallete.whiteColor,
                      ),
                    ),
                  ),
                  20.heightBox
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
