import 'package:budaya_jogja/controller/translation.dart';
import 'package:budaya_jogja/utils/button.dart';
import 'package:flag/flag.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/navbar.dart';
import '../controller/theme.dart';
import 'section/navbar.dart';

class Layout extends StatelessWidget {
  Layout({super.key, required this.child, this.isShow = true});
  final Widget child;
  final bool isShow;
  final controllerNavbar = Get.find<NavbarController>();
  final controllerTheme = Get.find<ThemeController>();
  final controllerTranslate = Get.find<TranslateController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(120),
        child: Navbar(
          isShow: isShow,
        ),
      ),
      endDrawer: (context.width < 1000)
          ? Obx(
              () {
                return Drawer(
                  backgroundColor:
                      controllerTheme.isDarkMode.value ? Color(0xffFDF6E0) : Color(0xff1E1E1E),
                  child: Column(
                    children: [
                      DrawerHeader(
                        child: InkWell(
                          onTap: () {
                            Get.offNamed("/");
                            controllerNavbar.scrollOffset.value = 0.0;
                          },
                          child: Image.asset(
                            "assets/logo.png",
                          ),
                        ),
                      ),
                      ListTile(
                        onTap: () {
                          Get.offNamed("/history");
                          controllerNavbar.scrollOffset.value = 0.0;
                        },
                        title: Text(
                          "navbar_history".tr,
                          style: TextStyle(
                              color:
                                  controllerTheme.isDarkMode.value ? Colors.black : Colors.white),
                        ),
                      ),
                      ListTile(
                        onTap: () {
                          Get.offNamed("/aksara");
                          controllerNavbar.scrollOffset.value = 0.0;
                        },
                        title: Text(
                          "navbar_script".tr,
                          style: TextStyle(
                              color:
                                  controllerTheme.isDarkMode.value ? Colors.black : Colors.white),
                        ),
                      ),

                      Divider(), //here is a divider
                      Container(
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          "navbar_culture".tr,
                          style: TextStyle(
                            color: controllerTheme.isDarkMode.value ? Colors.black : Colors.white,
                          ),
                        ),
                      ),
                      Divider(), //here is a divider
                      ListTile(
                        onTap: () {
                          Get.offNamed("/social_life");
                          controllerNavbar.scrollOffset.value = 0.0;
                        },
                        title: Text(
                          "social_life".tr,
                          style: TextStyle(
                              color:
                                  controllerTheme.isDarkMode.value ? Colors.black : Colors.white),
                        ),
                      ),
                      ListTile(
                        onTap: () {
                          Get.offNamed("/event");
                          controllerNavbar.scrollOffset.value = 0.0;
                        },
                        title: Text(
                          "event".tr,
                          style: TextStyle(
                              color:
                                  controllerTheme.isDarkMode.value ? Colors.black : Colors.white),
                        ),
                      ),
                      Divider(), //h
                      Container(
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          "travel".tr,
                          style: TextStyle(
                            color: controllerTheme.isDarkMode.value ? Colors.black : Colors.white,
                          ),
                        ),
                      ),
                      Divider(), //h
                      ListTile(
                        onTap: () {
                          Get.offNamed("/places");
                          controllerNavbar.scrollOffset.value = 0.0;
                        },
                        title: Text(
                          "places".tr,
                          style: TextStyle(
                              color:
                                  controllerTheme.isDarkMode.value ? Colors.black : Colors.white),
                        ),
                      ),
                      ListTile(
                        onTap: () {
                          Get.offNamed("/kuliner");
                          controllerNavbar.scrollOffset.value = 0.0;
                        },
                        title: Text(
                          "kuliner".tr,
                          style: TextStyle(
                              color:
                                  controllerTheme.isDarkMode.value ? Colors.black : Colors.white),
                        ),
                      ),
                      Divider(), //h
                      ListTile(
                        onTap: () {
                          Get.offNamed("/galeri");
                          controllerNavbar.scrollOffset.value = 0.0;
                        },
                        title: Text(
                          "navbar_galeri".tr,
                          style: TextStyle(
                              color:
                                  controllerTheme.isDarkMode.value ? Colors.black : Colors.white),
                        ),
                      ),
                      ListTile(
                        onTap: () {
                          Get.offNamed("/about_us");
                          controllerNavbar.scrollOffset.value = 0.0;
                        },
                        title: Text(
                          "navbar_about_us".tr,
                          style: TextStyle(
                              color:
                                  controllerTheme.isDarkMode.value ? Colors.black : Colors.white),
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Obx(
                            () => PopupMenuButton(
                              tooltip: "Translate",
                              initialValue: controllerTranslate.selectedLanguage.value,
                              child: RichText(
                                textAlign: TextAlign.center,
                                text: controllerTranslate.setWidget(
                                  context,
                                  controllerTranslate.selectedLanguage.value,
                                ),
                              ),
                              onSelected: (String item) {
                                controllerTranslate.onChange(item);
                              },
                              itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                                PopupMenuItem<String>(
                                  value: "en_US",
                                  child: RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(
                                      children: [
                                        WidgetSpan(
                                          child: Flag.fromCode(
                                            FlagsCode.US,
                                            width: 20,
                                            height: 20,
                                          ),
                                        ),
                                        WidgetSpan(
                                          child: SizedBox(
                                            width: 7,
                                          ),
                                        ),
                                        TextSpan(
                                          text: "en_US",
                                          style: context.theme.textTheme.titleMedium!,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                PopupMenuItem<String>(
                                  value: "id_ID",
                                  child: RichText(
                                    text: TextSpan(
                                      children: [
                                        WidgetSpan(
                                          child: Flag.fromCode(
                                            FlagsCode.ID,
                                            width: 20,
                                            height: 20,
                                          ),
                                        ),
                                        WidgetSpan(
                                          child: SizedBox(
                                            width: 7,
                                          ),
                                        ),
                                        TextSpan(
                                          text: "id_ID",
                                          style: context.theme.textTheme.titleMedium!,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                PopupMenuItem<String>(
                                  value: "jw_ID",
                                  child: RichText(
                                    text: TextSpan(
                                      children: [
                                        WidgetSpan(
                                          child: Flag.fromCode(
                                            FlagsCode.ID,
                                            width: 20,
                                            height: 20,
                                          ),
                                        ),
                                        WidgetSpan(
                                          child: SizedBox(
                                            width: 7,
                                          ),
                                        ),
                                        TextSpan(
                                          text: "jw_ID",
                                          style: context.theme.textTheme.titleMedium!,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          CustomAdvanceSwitch(
                            controller: controllerTheme.controller.value,
                            activeChild: Icon(Icons.light_mode),
                            inactiveChild: Icon(Icons.dark_mode),
                            activeColor: Color.fromARGB(255, 116, 173, 185),
                          )
                          // if (context.width > 800) NavbarButton(onTap: () {}, text: "Tsds"),
                        ],
                      ),
                    ],
                  ),
                );
              },
            )
          : null,
      body: SingleChildScrollView(
        controller: controllerNavbar.pageScrollController,
        padding: EdgeInsets.zero,
        child: Obx(
          () => Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: controllerTheme.isDarkMode.value ? Color(0xffFDF6E0) : Color(0xff1E1E1E),
              image: DecorationImage(
                  image: AssetImage("assets/pattern.png"),
                  fit: BoxFit.cover,
                  filterQuality: FilterQuality.high,
                  opacity: 0.5),
            ),
            child: child,
          ),
        ),
      ),
    );
  }
}
