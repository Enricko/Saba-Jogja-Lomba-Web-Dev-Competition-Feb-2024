import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavbarController extends GetxController {
  late ScrollController pageScrollController;
  var scrollOffset = 0.0.obs;

  bool scrollBool() {
    return scrollOffset.value >= 0 && scrollOffset.value <= 20;
  }

  @override
  void onInit() {
    super.onInit();
    pageScrollController = ScrollController();
    pageScrollController.addListener(() {
      scrollOffset.value = pageScrollController.offset;
    });
  }

  @override
  void onClose() {
    super.onClose();
    pageScrollController.dispose();
    scrollOffset.value = 0.0;
  }
}