import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_ui/responsive_ui.dart';

import '../../../controller/navbar.dart';

class About extends StatelessWidget {
  About({
    super.key,
  });
  final controllerNavbar = Get.find<NavbarController>();

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.antiAlias,
      children: [
        Positioned(
          top: 0,
          right: 0,
          height: context.height * 1,
          child: Container(
            alignment: Alignment.topRight,
            child: Image.asset(
              "assets/pattern_topright.png",
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 112),
          width: context.width,
          color: Color(0xffFDF6E0),
          alignment: Alignment.center,
          child: Responsive(
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              Div(
                divison: Division(
                  colXL: 3,
                  colL: 4,
                  colM: 10,
                  colS: 10,
                  colXS: 10,
                ),
                child: Card(
                  elevation: 10,
                  shadowColor: Colors.black12,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  child: Container(
                    height: context.height * .8,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.white,
                      image: DecorationImage(
                        image: AssetImage("assets/kuda.png"),
                        fit: BoxFit.cover,
                      ),
                      boxShadow: [
                        new BoxShadow(
                          color: Colors.black,
                          blurRadius: 20.0,
                        ),
                      ],
                    ),
                    foregroundDecoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      gradient: LinearGradient(
                        colors: [
                          Colors.black.withOpacity(.7),
                          Colors.transparent,
                          Colors.transparent,
                          Colors.black.withOpacity(.7)
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        stops: [0, 0.2, 0.8, 1],
                      ),
                    ),
                  ),
                ),
              ),
              Div(
                divison: Division(
                  colXL: 7,
                  colL: 6,
                  colM: 10,
                  colS: 10,
                  colXS: 10,
                ),
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'region_of'.tr,
                        style: TextStyle(
                          color: Color(0xFFFF634F),
                          fontSize: 18,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                      Text(
                        'Yogyakarta',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 50,
                          fontFamily: 'JawaPalsu',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 25),
                        child: Text(
                          "about_yogya".tr,
                          style: TextStyle(
                            color: Color(0xFF1E1E1E),
                            fontSize: 18,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(18),
                        child: ElevatedButton(
                          onPressed: () {
                            Get.offNamed("/history");
                    controllerNavbar.scrollOffset.value = 0.0;

                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Color(0xFFDF6951)),
                            padding: MaterialStateProperty.all(EdgeInsets.all(25)),
                            textStyle: MaterialStateProperty.all(TextStyle(fontSize: 30)),
                          ),
                          child: Text(
                            "show_more".tr.toUpperCase(),
                            style: TextStyle(
                              color: Color(0xFFECECEC),
                              fontSize: 16.88,
                              fontFamily: 'Archivo Black',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
