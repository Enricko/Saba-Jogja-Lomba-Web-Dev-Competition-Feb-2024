import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ThemeController extends GetxController {
  var _isDarkMode = true.obs;

  final controller = ValueNotifier<bool>(true).obs;

  @override
  void onInit() {
    super.onInit();
    if (GetStorage().read("isDarkMode") != null) {
      _isDarkMode.value == GetStorage().read("isDarkMode");
      controller.value.value = GetStorage().read("isDarkMode");
      Get.changeTheme(GetStorage().read("isDarkMode") ? ThemeData.light() : ThemeData.dark());
    }
    controller.value.addListener(() {
      if (controller.value.value) {
        _isDarkMode.value = true;
      } else {
        _isDarkMode.value = false;
      }
      GetStorage().write("isDarkMode", _isDarkMode.value);
      Get.changeTheme(GetStorage().read("isDarkMode") ? ThemeData.light() : ThemeData.dark());
    });
  }
}
