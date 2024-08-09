import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class Screen1Controller extends GetxController {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController palindromeController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    nameController.dispose();
    palindromeController.dispose();
    super.dispose();
  }

  bool isPalindrome(String sentence) {
    if (sentence.isEmpty) return false;

    String cleaned =
        sentence.replaceAll(RegExp(r'[^a-zA-Z0-9]'), '').toLowerCase();

    String reversed = cleaned.split('').reversed.join('');

    return cleaned == reversed;
  }
}
