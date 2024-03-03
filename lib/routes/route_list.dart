import 'package:budaya_jogja/page/aksara.dart';
import 'package:budaya_jogja/page/home.dart';
import 'package:budaya_jogja/page/kuliner.dart';
import 'package:budaya_jogja/page/places.dart';
import 'package:budaya_jogja/page/social_life.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/homepage.dart';
import '../controller/navbar.dart';
import '../controller/theme.dart';
import '../controller/translation.dart';
import '../page/about_us.dart';
import '../page/galeri.dart';
import '../page/history.dart';

class RouteList {
  static final pages = [
    GetPage(
      name: "/",
      page: () => HomePage(),
      binding: BindingsBuilder(() {
        Get.put(ThemeController());
        Get.put(HomePageController());
        Get.put(TranslateController());
      }),
    ),
    GetPage(
      name: "/history",
      page: () => History(),
      binding: BindingsBuilder(() {
        Get.put(ThemeController());
        Get.put(TranslateController());
      }),
    ),
    GetPage(
      name: "/about_us",
      page: () => AboutUs(),
      binding: BindingsBuilder(() {
        Get.put(ThemeController());
        Get.put(TranslateController());
      }),
    ),
    GetPage(
      name: "/social_life",
      page: () => SocialLife(),
      binding: BindingsBuilder(() {
        Get.put(ThemeController());
        Get.put(TranslateController());
      }),
    ),
    GetPage(
      name: "/aksara",
      page: () => Aksara(),
      binding: BindingsBuilder(() {
        Get.put(ThemeController());
        Get.put(TranslateController());
      }),
    ),
    GetPage(
      name: "/galeri",
      page: () => Galeri(),
      binding: BindingsBuilder(() {
        Get.put(ThemeController());
        Get.put(TranslateController());
      }),
    ),
    GetPage(
      name: "/places",
      page: () => Places(),
      binding: BindingsBuilder(() {
        Get.put(ThemeController());
        Get.put(TranslateController());
      }),
    ),
    GetPage(
      name: "/kuliner",
      page: () => Kuliner(),
      binding: BindingsBuilder(() {
        Get.put(ThemeController());
        Get.put(TranslateController());
      }),
    ),
  ];
}
