import 'dart:async';
import 'dart:js';

import 'package:budaya_jogja/utils/button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final controllerTheme = Get.put(ThemeController());
  final controllerHome = Get.put(HomePageController());
  final controllerNavbar = Get.put(NavbarController());

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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      NavbarButton(context: context, onTap: () {}, text: "HISTORY"),
                      NavbarButton(context: context, onTap: () {}, text: "AKSARA"),
                      NavbarButton(context: context, onTap: () {}, text: "CULTURE"),
                      NavbarButton(context: context, onTap: () {}, text: "DIVERSITY"),
                      NavbarButton(context: context, onTap: () {}, text: "ABOUT US"),
                    ],
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        // ElevatedButton(
                        //   onPressed: () {
                        //     Get.changeTheme(Get.isDarkMode ? ThemeData.light() : ThemeData.dark());
                        //   },
                        //   child: Text("Test"),
                        // ),
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
                  ? (context.width <= 600 ? context.height * .55 : context.height * .85)
                  : context.height,
              color: Color(0xffB9E8F2),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: SlideTransition(
                      position: controllerHome._animationCloud1,
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
                      position: controllerHome._animationCloud2,
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
                      position: controllerHome._animationCloud3,
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
                      position: controllerHome._animationTitle,
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Container(
                          width: context.width * .5,
                          height: context.height * 0.5,
                          child: Center(
                            child: Obx(
                              () => Text(
                                '${controllerHome._texts[controllerHome._currentIndex.value]}',
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
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: SlideTransition(
                      position: controllerHome._animationCandi,
                      child: Container(
                        width: context.width * .33,
                        height: context.height * .53,
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
                      position: controllerHome._animationTugu,
                      child: Container(
                        width: context.width * .33,
                        height: context.height * .7,
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
                      position: controllerHome._animationBeringharjo,
                      child: Container(
                        width: context.width * .33,
                        height: context.height * .7,
                        alignment: Alignment.bottomRight,
                        child: Image.asset(
                          "assets/beirngharjo.png",
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: context.height,
              width: context.width,
            )
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
                    text,
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

class NavbarController extends GetxController {
  late ScrollController pageScrollController;
  var scrollOffset = 0.0.obs;

  // double scaleScroll() {
  //   return (1.5 -
  //       ((scrollOffset.value >= 0 && scrollOffset.value <= 20 ? scrollOffset.value / 6.6 : 2) /
  //           10));
  // }

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
  }
}

class ThemeController extends GetxController {
  var _isDarkMode = true.obs;

  final controller = ValueNotifier<bool>(true).obs;

  @override
  void onInit() {
    super.onInit();
    controller.value.addListener(() {
      if (controller.value.value) {
        _isDarkMode.value = true;
      } else {
        _isDarkMode.value = false;
      }
      Get.changeTheme(_isDarkMode.value ? ThemeData.light() : ThemeData.dark());
    });
  }
}

class HomePageController extends GetxController with SingleGetTickerProviderMixin {
  late AnimationController _controllerBuilding;
  late AnimationController _controllerTitle;

  late Animation<Offset> _animationCandi;
  late Animation<Offset> _animationTugu;
  late Animation<Offset> _animationBeringharjo;

  late Animation<Offset> _animationTitle;

  late Animation<Offset> _animationCloud1;
  late Animation<Offset> _animationCloud2;
  late Animation<Offset> _animationCloud3;

  Timer? _timer;
  RxList<String> _texts = RxList<String>([
    'Sugeng Rawuh',
    'Selamat Datang',
    'Welcome',
  ]);
  var _currentIndex = 0.obs;

  @override
  void onInit() {
    super.onInit();
    _controllerBuilding = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );
    _controllerTitle = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );

    _animationCandi = Tween<Offset>(
      begin: Offset(-1.0, 1.0),
      end: Offset(0.0, 0.0),
    ).animate(CurvedAnimation(
      parent: _controllerBuilding,
      curve: Curves.easeInOut,
    ));
    _animationTugu = Tween<Offset>(
      begin: Offset(0.0, 1.0),
      end: Offset(0.0, 0.0),
    ).animate(CurvedAnimation(
      parent: _controllerBuilding,
      curve: Curves.easeInOut,
    ));
    _animationBeringharjo = Tween<Offset>(
      begin: Offset(1.0, 1.0),
      end: Offset(0.0, 0.0),
    ).animate(CurvedAnimation(
      parent: _controllerBuilding,
      curve: Curves.easeInOut,
    ));
    _animationCloud1 = Tween<Offset>(
      begin: Offset(0.0, 0.0),
      end: Offset(0.1, 0.0),
    ).animate(CurvedAnimation(
      parent: _controllerBuilding,
      curve: Curves.easeInOut,
    ));
    _animationCloud2 = Tween<Offset>(
      begin: Offset(0.0, 0.5),
      end: Offset(-0.1, 0.5),
    ).animate(CurvedAnimation(
      parent: _controllerBuilding,
      curve: Curves.easeInOut,
    ));
    _animationCloud3 = Tween<Offset>(
      begin: Offset(0.0, -1),
      end: Offset(0.0, -1),
    ).animate(CurvedAnimation(
      parent: _controllerBuilding,
      curve: Curves.easeInOut,
    ));

    _timer = Timer.periodic(Duration(seconds: 5), (timer) {
      _currentIndex.value = (_currentIndex.value + 1) % _texts.length;
    });

    _animationTitle = Tween<Offset>(
      begin: Offset(0.0, -1.0),
      end: Offset(0.0, 0.0),
    ).animate(CurvedAnimation(
      parent: _controllerTitle,
      curve: Curves.easeInOut,
    ));

    _controllerBuilding.forward();
    _controllerTitle.forward();
  }

  @override
  void onClose() {
    super.onClose();
    _controllerBuilding.dispose();
    _controllerTitle.dispose();
    _timer!.cancel();
  }
}
