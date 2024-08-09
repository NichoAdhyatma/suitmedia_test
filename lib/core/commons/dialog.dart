import 'package:flutter/material.dart';
import 'package:get/get.dart';

void showGetxDialog(String message) {
  Get.defaultDialog(
    title: message,
    content: Text(message),
    actions: [
      TextButton(
        onPressed: () {
          Get.back();
        },
        child: const Text("Close"),
      ),
    ],
  );
}
