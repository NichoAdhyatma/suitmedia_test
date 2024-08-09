import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:suitmedia_msib/core/themes/app_pallete.dart';

AppBar buildAppBar(String title) {
  return AppBar(
    surfaceTintColor: AppPallete.whiteColor,
    backgroundColor: AppPallete.whiteColor,
    title: Text(
      title,
      style: const TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 18,
      ),
    ),
    leading: IconButton(
      icon: const Icon(
        Icons.arrow_back_ios_rounded,
        color: Colors.blueAccent,
      ),
      onPressed: () {
        Get.back();
      },
    ),
    centerTitle: true,
    bottom: PreferredSize(
      preferredSize: const Size.fromHeight(4.0),
      child: Container(
        color: Colors.grey,
        height: 0.4,
      ),
    ),
  );
}
