import 'package:budaya_jogja/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'controller/translation.dart';
import 'page/home.dart';

void main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: (GetStorage().read("isDarkMode") != null ? GetStorage().read("isDarkMode") : false)
          ? ThemeMode.dark
          : ThemeMode.light,
      translations: GlobalTranslation(),
      locale: Locale(GetStorage().read("translate") != null ? GetStorage().read("translate") : "en_US"),
      title: 'Flutter Demo',
      home: HomePage(),
    );
  }
}
