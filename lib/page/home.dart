import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final controllerHome = Get.put(HomePageController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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
              color: Colors.black,
            )
          ],
        ),
      ),
    );
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
      _controllerTitle.reset();
      _controllerTitle.forward();
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
