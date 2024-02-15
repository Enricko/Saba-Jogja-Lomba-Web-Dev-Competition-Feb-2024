import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePageController extends GetxController with SingleGetTickerProviderMixin {
  late AnimationController controllerBuilding;
  late AnimationController controllerTitle;

  late Animation<Offset> animationCandi;
  late Animation<Offset> animationTugu;
  late Animation<Offset> animationBeringharjo;

  late Animation<Offset> animationTitle;

  late Animation<Offset> animationCloud1;
  late Animation<Offset> animationCloud2;
  late Animation<Offset> animationCloud3;

  Timer? timer;
  RxList<String> texts = RxList<String>([
    'Sugeng Rawuh',
    'Selamat Datang',
    'Welcome',
  ]);
  var currentIndex = 0.obs;

  @override
  void onInit() {
    super.onInit();
    controllerBuilding = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );
    controllerTitle = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );

    animationCandi = Tween<Offset>(
      begin: Offset(-1.0, 1.0),
      end: Offset(0.0, 0.0),
    ).animate(CurvedAnimation(
      parent: controllerBuilding,
      curve: Curves.easeInOut,
    ));
    animationTugu = Tween<Offset>(
      begin: Offset(0.0, 1.0),
      end: Offset(0.0, 0.0),
    ).animate(CurvedAnimation(
      parent: controllerBuilding,
      curve: Curves.easeInOut,
    ));
    animationBeringharjo = Tween<Offset>(
      begin: Offset(1.0, 1.0),
      end: Offset(0.0, 0.0),
    ).animate(CurvedAnimation(
      parent: controllerBuilding,
      curve: Curves.easeInOut,
    ));
    animationCloud1 = Tween<Offset>(
      begin: Offset(0.0, 0.0),
      end: Offset(0.1, 0.0),
    ).animate(CurvedAnimation(
      parent: controllerBuilding,
      curve: Curves.easeInOut,
    ));
    animationCloud2 = Tween<Offset>(
      begin: Offset(0.0, 0.5),
      end: Offset(-0.1, 0.5),
    ).animate(CurvedAnimation(
      parent: controllerBuilding,
      curve: Curves.easeInOut,
    ));
    animationCloud3 = Tween<Offset>(
      begin: Offset(0.0, -1),
      end: Offset(0.0, -1),
    ).animate(CurvedAnimation(
      parent: controllerBuilding,
      curve: Curves.easeInOut,
    ));

    timer = Timer.periodic(Duration(seconds: 5), (timer) {
      currentIndex.value = (currentIndex.value + 1) % texts.length;
    });

    animationTitle = Tween<Offset>(
      begin: Offset(0.0, -1.0),
      end: Offset(0.0, 0.0),
    ).animate(CurvedAnimation(
      parent: controllerTitle,
      curve: Curves.easeInOut,
    ));

    controllerBuilding.forward();
    controllerTitle.forward();
  }

  @override
  void onClose() {
    super.onClose();
    controllerBuilding.dispose();
    controllerTitle.dispose();
    timer!.cancel();
  }
}
