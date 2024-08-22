import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lookbook/utils/validations/validator.dart';

class AddProductController extends GetxController {
  final categoryController = TextEditingController();
  final dressController = TextEditingController();
  final priceController = TextEditingController();
  final descriptionController = TextEditingController();
  final colorController = TextEditingController();
  final sizeController = TextEditingController();
  final quantityController = TextEditingController();
  final socialController = TextEditingController();
  final phoneController = TextEditingController();
  final emailController = TextEditingController();

  final isButtonActive = false.obs;
  final RxString _emailErrorText = ''.obs;
  final RxString _phoneErrorText = ''.obs;
  final RxString _categoryErrorText = ''.obs;
  final RxString _descriptionErrorText = ''.obs;
  final RxString _priceErrorText = ''.obs;
  final List<File> selectedImages = <File>[].obs;

  final FocusNode categoryFocusNode = FocusNode();
  final FocusNode dressFocusNode = FocusNode();
  final FocusNode priceFocusNode = FocusNode();
  final FocusNode descriptionFocusNode = FocusNode();
  final FocusNode colorFocusNode = FocusNode();
  final FocusNode sizeFocusNode = FocusNode();
  final FocusNode quantityFocusNode = FocusNode();
  final FocusNode socialFocusNode = FocusNode();
  final FocusNode phoneFocusNode = FocusNode();
  final FocusNode emailFocusNode = FocusNode();

  String? get emailErrorText =>
      _emailErrorText.value.isEmpty ? null : _emailErrorText.value;
  String? get phoneErrorText =>
      _phoneErrorText.value.isEmpty ? null : _phoneErrorText.value;

  String? get categoryErrorText =>
      _categoryErrorText.value.isEmpty ? null : _categoryErrorText.value;

  String? get descriptionErrorText =>
      _descriptionErrorText.value.isEmpty ? null : _descriptionErrorText.value;
  String? get priceErrorText =>
      _priceErrorText.value.isEmpty ? null : _priceErrorText.value;

  @override
  void onInit() {
    super.onInit();
    emailController.addListener(_validateField);
    phoneController.addListener(_validateField);
    priceController.addListener(_validateField);
    descriptionController.addListener(_validateField);
    categoryController.addListener(_validateField);
  }

  void _validateField() {
    final errors = ValidationService.validateFields(
      category: categoryController.text,
      price: priceController.text,
      description: descriptionController.text,
      phone: phoneController.text,
      email: emailController.text,
    );

    _categoryErrorText.value = errors['category'] ?? '';
    _priceErrorText.value = errors['price'] ?? '';
    _descriptionErrorText.value = errors['description'] ?? '';
    _phoneErrorText.value = errors['phone'] ?? '';
    _emailErrorText.value = errors['email'] ?? '';

    _validateForm();
  }

  void _validateForm() {
    isButtonActive.value = _emailErrorText.value.isEmpty &&
        _phoneErrorText.value.isEmpty &&
        _categoryErrorText.value.isEmpty &&
        _priceErrorText.value.isEmpty &&
        _descriptionErrorText.value.isEmpty &&
        selectedImages.isNotEmpty;
  }

  Future<void> pickImage() async {
    if (selectedImages.length < 5) {
      // Limiting to 5 images
      final picker = ImagePicker();
      final pickedFile = await picker.pickImage(source: ImageSource.gallery);
      if (pickedFile != null) {
        selectedImages.add(File(pickedFile.path));
        _validateForm(); // Revalidate the form when an image is added
      }
    } else {
      Get.snackbar('Limit Reached', 'You can only upload 5 images.');
    }
  }

  void removeImage(int index) {
    selectedImages.removeAt(index);
    _validateForm(); // Revalidate the form when an image is removed
  }

  @override
  void onClose() {
    // Dispose the controllers when the controller is removed from memory
    categoryController.dispose();
    categoryFocusNode.dispose();
    dressController.dispose();
    priceController.dispose();
    descriptionController.dispose();
    colorController.dispose();
    sizeController.dispose();
    quantityController.dispose();
    socialController.dispose();
    phoneController.dispose();
    emailController.dispose();
    super.onClose();
  }
}
