import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DesignerProfileScreenController extends GetxController {
  final nameController = TextEditingController();
  final passwordController = TextEditingController();
  final emailController = TextEditingController();

  @override
  void onClose() {
    emailController.dispose();
    nameController.dispose();
    passwordController.dispose();

    super.onClose();
  }
}
