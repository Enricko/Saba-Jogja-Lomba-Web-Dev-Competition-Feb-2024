import 'package:flag/flag.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/navbar.dart';
import '../../controller/theme.dart';
import '../../controller/translation.dart';
import '../../utils/button.dart';

class Navbar extends StatelessWidget {
  Navbar({super.key, this.isShow = true});
  final bool isShow;

  final controllerTheme = Get.find<ThemeController>();
  final controllerNavbar = Get.find<NavbarController>();
  final controllerTranslate = Get.find<TranslateController>();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: controllerNavbar.scrollBool()
            ? Colors.transparent
            : Get.theme.appBarTheme.backgroundColor,
        toolbarHeight: 120,
        title: Center(
          child: Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: InkWell(
                  onTap: () {
                    Get.offNamed("/");
                    controllerNavbar.scrollOffset.value = 0.0;
                  },
                  child: Image.asset(
                    "assets/logo.png",
                    width: context.width > 600 ? 150 : 100,
                  ),
                ),
              ),
              if (context.width > 1000)
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Button().NavbarButton(
                      context: context,
                      isShow: isShow,
                      onTap: () {
                        Get.offNamed("/history");
                        controllerNavbar.scrollOffset.value = 0.0;
                      },
                      text: "navbar_history".tr,
                    ),
                    Button().NavbarButton(
                      context: context,
                      isShow: isShow,
                      onTap: () {
                        Get.offNamed("/aksara");
                        controllerNavbar.scrollOffset.value = 0.0;
                      },
                      text: "navbar_script".tr,
                    ),
                    DropdownButtonExample(
                      title: "navbar_culture".tr.toUpperCase(),
                      options: ["social_life", "event"],
                      isShow: isShow,
                    ),
                    DropdownButtonExample(
                      title: "travel".tr.toUpperCase(),
                      options: ["places", "kuliner"],
                      isShow: isShow,
                    ),
                    Button().NavbarButton(
                      context: context,
                      isShow: isShow,
                      onTap: () {

                    Get.offNamed("/galeri");
                    controllerNavbar.scrollOffset.value = 0.0;
                      },
                      text: "navbar_galeri".tr,
                    ),
                    Button().NavbarButton(
                      context: context,
                      isShow: isShow,
                      onTap: () {
                        Get.offNamed("/about_us");
                        controllerNavbar.scrollOffset.value = 0.0;
                      },
                      text: "navbar_about_us".tr,
                    ),
                  ],
                ),
              Align(
                alignment: Alignment.centerRight,
                child: Row(
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
