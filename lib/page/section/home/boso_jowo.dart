import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_ui/responsive_ui.dart';

import '../../../controller/navbar.dart';

class BosoJowo extends StatelessWidget {
  BosoJowo({
    super.key,
  });

  var controllerNavbar = Get.find<NavbarController>();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 112),
          width: context.width,
          alignment: Alignment.center,
          child: Responsive(
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              Div(
                divison: Division(
                  colXL: 4,
                  colL: 5,
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
                    height: context.height * .3,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.white,
                      image: DecorationImage(
                        image: AssetImage("assets/aksara_jawa.png"),
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
                  colXL: 6,
                  colL: 5,
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
                        'Boso Jawa',
                        textAlign: TextAlign.center,
                        style: context.theme.textTheme.titleLarge!.copyWith(
                          fontFamily: "JawaPalsu",
                          fontSize: 50,
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 25),
                        child: Text(
                          "bosojowo".tr,
                          textAlign: TextAlign.justify,
                          style: context.theme.textTheme.bodyMedium!.copyWith(
                            fontSize: 18,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                              height: 2,
                          ),
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(18),
                        child: ElevatedButton(
                          onPressed: () {

                    Get.offNamed("/aksara");
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
