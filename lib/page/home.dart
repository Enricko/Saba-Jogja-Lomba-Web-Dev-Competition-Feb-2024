import "dart:math" as math;
import 'package:budaya_jogja/controller/translation.dart';
import 'package:budaya_jogja/page/section/home/deskripsi_kebudayaan.dart';
import 'package:budaya_jogja/page/section/home/mountain.dart';
import 'package:flag/flag.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_ui/responsive_ui.dart';

import '../controller/homepage.dart';
import '../controller/navbar.dart';
import '../controller/theme.dart';
import '../utils/button.dart';
import 'section/home/about.dart';
import 'section/home/boso_jowo.dart';
import 'section/home/gallery.dart';
import 'section/home/journey.dart';
import 'section/home/panguripan.dart';
import 'section/home/upacara.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final controllerTheme = Get.put(ThemeController());
  final controllerHome = Get.put(HomePageController());
  final controllerNavbar = Get.put(NavbarController());
  final controllerTranslate = Get.put(TranslateController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(120),
        child: Obx(
          () => AppBar(
            automaticallyImplyLeading: controllerNavbar.scrollBool(),
            backgroundColor: controllerNavbar.scrollBool()
                ? Colors.transparent
                : context.theme.appBarTheme.backgroundColor,
            toolbarHeight: 120,
            title: Center(
              child: Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Image.asset(
                      "assets/logo.png",
                      width: context.width > 600 ? 150 : 100,
                    ),
                  ),
                  if (context.width > 1000)
                    Obx(
                      () => Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          NavbarButton(context: context, onTap: () {}, text: "navbar_history".tr),
                          NavbarButton(context: context, onTap: () {}, text: "navbar_script".tr),
                          NavbarButton(context: context, onTap: () {}, text: "navbar_culture".tr),
                          NavbarButton(context: context, onTap: () {}, text: "navbar_diversity".tr),
                          NavbarButton(context: context, onTap: () {}, text: "navbar_about_us".tr),
                        ],
                      ),
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
        ),
      ),
      body: SingleChildScrollView(
        controller: controllerNavbar.pageScrollController,
        padding: EdgeInsets.zero,
        child: Column(
          children: [
            Container(
              height: context.width <= 1024
                  ? (context.width <= 600 ? context.height * .6 : context.height * .85)
                  : context.height,
              color: Color(0xffB9E8F2),
              child: LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
                return Stack(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: SlideTransition(
                        position: controllerHome.animationCloud1,
                        child: Container(
                          width: context.width * 1,
                          height: 350,
                          alignment: Alignment.centerLeft,
                          child: Image.asset(
                            "assets/awan1.png",
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: SlideTransition(
                        position: controllerHome.animationCloud2,
                        child: Container(
                          width: context.width * 1,
                          height: 350,
                          alignment: Alignment.centerRight,
                          child: Image.asset(
                            "assets/awan2.png",
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: SlideTransition(
                        position: controllerHome.animationCloud3,
                        child: Container(
                          width: context.width * 1,
                          height: 350,
                          alignment: Alignment.centerRight,
                          child: Image.asset(
                            "assets/awan3.png",
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: SlideTransition(
                        position: controllerHome.animationTitle,
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Container(
                            width: context.width * .5,
                            height: context.height * 0.5,
                            child: Center(
                              child: Obx(
                                () => Text(
                                  '${controllerHome.texts[controllerHome.currentIndex.value]}',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: 'JawaPalsu',
                                    color: Colors.black,
                                    fontSize: context.width * .1,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: context.width * .1,
                      child: SlideTransition(
                        position: controllerHome.animationGedungPutih,
                        child: Container(
                          width: context.width * .35,
                          height: context.height * 1,
                          alignment: Alignment.bottomCenter,
                          child: Image.asset(
                            "assets/gedung putih.png",
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: context.width * .1,
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: SlideTransition(
                          position: controllerHome.animationBni,
                          child: Container(
                            width: context.width * .35,
                            height: context.height * 1,
                            alignment: Alignment.bottomCenter,
                            child: Transform(
                              alignment: Alignment.center,
                              transform: Matrix4.rotationY(math.pi),
                              child: Image.asset(
                                "assets/gedung putih.png",
                                fit: BoxFit.scaleDown,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: SlideTransition(
                        position: controllerHome.animationCandi,
                        child: Container(
                          width: context.width * .33,
                          height: context.height * .8,
                          alignment: Alignment.bottomLeft,
                          child: Image.asset(
                            "assets/candi.png",
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: SlideTransition(
                        position: controllerHome.animationTugu,
                        child: Container(
                          width: context.width * .33,
                          height: context.height * 1,
                          alignment: Alignment.bottomCenter,
                          child: Image.asset(
                            "assets/tugu.png",
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: SlideTransition(
                        position: controllerHome.animationBeringharjo,
                        child: Container(
                          width: context.width * .33,
                          height: context.height * .8,
                          alignment: Alignment.bottomRight,
                          child: Image.asset(
                            "assets/beirngharjo.png",
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        width: context.width,
                        height: context.height * .4,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment(0.00, -1.0),
                            end: Alignment(0, 1),
                            colors: [Colors.white.withOpacity(0), Color(0x7F797979), Colors.black],
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              }),
            ),
            About(),
            Panguripan(),
            BosoJowo(),
            Gallery(),
            Upacara(),
            Mountain(),
            Journey(),
            DeskripsiKebudayaan(),
            Culinary(),
          ],
        ),
      ),
    );
  }

  Widget NavbarButton({
    required BuildContext context,
    required VoidCallback onTap,
    required String text,
  }) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: context.width * .1 / 4.5),
      child: GestureDetector(
        onTap: onTap,
        child: MouseRegion(
          cursor: SystemMouseCursors.click,
          child: AnimatedContainer(
            duration: const Duration(seconds: 1),
            child: Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    text.toUpperCase(),
                    style: context.theme.textTheme.titleMedium!.copyWith(
                      color: controllerNavbar.scrollBool() ? Colors.black : null,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
