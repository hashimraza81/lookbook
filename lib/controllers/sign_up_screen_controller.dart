import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lookbook/utils/validations/validator.dart';

class SignUpController extends GetxController {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmController = TextEditingController();
  final isButtonActive = false.obs;
  final RxString _emailErrorText = ''.obs;
  final RxString _passwordErrorText = ''.obs;
  final RxString _nameErrorText = ''.obs;
  final RxString _confirmErrorText = ''.obs;

  String? get emailErrorText =>
      _emailErrorText.value.isEmpty ? null : _emailErrorText.value;
  String? get passwordErrorText =>
      _passwordErrorText.value.isEmpty ? null : _passwordErrorText.value;

  String? get nameErrorText =>
      _nameErrorText.value.isEmpty ? null : _nameErrorText.value;

  String? get confirmErrorText =>
      _confirmErrorText.value.isEmpty ? null : _confirmErrorText.value;

  @override
  void onInit() {
    super.onInit();
    emailController.addListener(_validateEmail);
    passwordController.addListener(_validatePassword);
    nameController.addListener(_validateName);
    confirmController.addListener(_validateConfirmPassword);
  }

  void _validateEmail() {
    _emailErrorText.value =
        ValidationService.validateEmail(emailController.text) ?? '';
    _validateForm();
  }

  void _validatePassword() {
    _passwordErrorText.value =
        ValidationService.validatePassword(passwordController.text) ?? '';
    _validateForm();
  }

  void _validateName() {
    _nameErrorText.value =
        ValidationService.validateName(nameController.text) ?? '';
    _validateForm();
  }

  void _validateConfirmPassword() {
    _confirmErrorText.value = ValidationService.validateConfirmPassword(
            passwordController.text, confirmController.text) ??
        '';
    _validateForm();
  }

  void _validateForm() {
    isButtonActive.value = _emailErrorText.value.isEmpty &&
        _passwordErrorText.value.isEmpty &&
        _nameErrorText.value.isEmpty &&
        _confirmErrorText.value.isEmpty;
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    nameController.dispose();
    confirmController.dispose();
    super.onClose();
  }
}
