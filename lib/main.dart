import 'package:budaya_jogja/utils/theme.dart';
import 'package:budaya_jogja/utils/translation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'page/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: Get.isDarkMode ? ThemeMode.dark : ThemeMode.light,
      translations: GlobalTranslation(),
      locale: Locale("en_US"),
      title: 'Flutter Demo',
      home: HomePage(),
    );
  }
}
