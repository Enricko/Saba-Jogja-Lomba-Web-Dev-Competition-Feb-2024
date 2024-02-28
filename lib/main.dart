import 'package:budaya_jogja/routes/route_list.dart';
import 'package:budaya_jogja/utils/theme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'controller/navbar.dart';
import 'controller/translation.dart';
import 'page/home.dart';

void main() async {
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final controllerNavbar = Get.put(NavbarController());
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: (GetStorage().read("isDarkMode") != null ? GetStorage().read("isDarkMode") : false)
          ? ThemeMode.light
          : ThemeMode.dark,
      translations: GlobalTranslation(),
      locale:
          Locale(GetStorage().read("translate") != null ? GetStorage().read("translate") : "en_US"),
      title: 'Budaya Yogyakarta',
      getPages: RouteList.pages,
      initialRoute: "/",
      unknownRoute: GetPage(
        name: "/",
        page: () => Center(
          child: Text("Not Found"),
        ),
      ),
      scrollBehavior: const MaterialScrollBehavior().copyWith(
        dragDevices: {
          PointerDeviceKind.mouse,
          PointerDeviceKind.touch,
          PointerDeviceKind.stylus,
          PointerDeviceKind.unknown
        },
      ),
    );
  }
}
