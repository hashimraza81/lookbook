import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/validations/validator.dart';

class ForgotPasswordController extends GetxController {
  final forgotPasswordController = TextEditingController();
  final emailErrorText = ''.obs;
  final isButtonActive = false.obs;

  @override
  void onInit() {
    super.onInit();
    forgotPasswordController.addListener(_validateEmail);
  }

  @override
  void onReady() {
    super.onReady();
    _resetFields(); // Reset fields when the controller is ready
  }

  void _validateEmail() {
    emailErrorText.value =
        ValidationService.validateEmail(forgotPasswordController.text) ?? '';
    _validateForm();
  }

  void _validateForm() {
    isButtonActive.value = emailErrorText.value.isEmpty;
  }

  void _resetFields() {
    forgotPasswordController.clear();
    emailErrorText.value = '';
    isButtonActive.value = false;
  }

  @override
  void onClose() {
    forgotPasswordController.dispose();
    super.onClose();
  }

  void submit() {
    if (isButtonActive.value) {
      // Close the bottom sheet
      Get.back();
      // Navigate to the sign-in screen
      Get.toNamed('signin');
    }
  }
}
