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
import 'layout.dart';
import 'section/home/about.dart';
import 'section/home/boso_jowo.dart';
import 'section/home/culinary.dart';
import 'section/home/footer.dart';
import 'section/home/gallery.dart';
import 'section/home/journey.dart';
import 'section/home/panguripan.dart';
import 'section/home/upacara.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final controllerHome = Get.find<HomePageController>();

  @override
  Widget build(BuildContext context) {
    return Layout(
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
          Footer(),
        ],
      ),
    );
  }
}
