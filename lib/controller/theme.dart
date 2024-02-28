import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ThemeController extends GetxController {
  var isDarkMode = true.obs;

  final controller = ValueNotifier<bool>(true).obs;

  @override
  void onInit() {
    super.onInit();
    if (GetStorage().read("isDarkMode") != null) {
      isDarkMode.value = GetStorage().read("isDarkMode");
      controller.value.value = GetStorage().read("isDarkMode");
      // Get.changeTheme(isDarkMode.value ? ThemeData.light() : ThemeData.dark());
    }
    controller.value.addListener(() {
      if (controller.value.value) {
        isDarkMode.value = true;
      } else {
        isDarkMode.value = false;
      }
      GetStorage().write("isDarkMode", isDarkMode.value);
      Get.changeThemeMode(GetStorage().read("isDarkMode") ? ThemeMode.light : ThemeMode.dark);
    });
  }

  @override
  void onClose() {
    super.onClose();
    controller.value.dispose();
  }
}
