import 'package:budaya_jogja/page/section/home/footer.dart';
import 'package:budaya_jogja/page/section/home/mountain.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_ui/responsive_ui.dart';

import '../controller/navbar.dart';
import '../controller/theme.dart';
import '../controller/translation.dart';
import 'layout.dart';
import 'section/navbar.dart';

class History extends StatelessWidget {
  History({super.key});

  @override
  Widget build(BuildContext context) {
    return Layout(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Mountain(),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 50, horizontal: 25),
            child: Responsive(
              runAlignment: WrapAlignment.center,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                Div(
                  divison: Division(colXL: 4, colL: 5, colM: 10, colS: 10, colXS: 10),
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'The History of'.tr,
                          style: TextStyle(
                            color: Color(0xFFFF634F),
                            fontSize: 24,
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
                      ],
                    ),
                  ),
                ),
                Div(
                  divison: Division(colXL: 6, colL: 5, colM: 11, colS: 11, colXS: 11),
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 25),
                    child: Text(
                      "history_yogya".tr,
                      textAlign: TextAlign.justify,
                      maxLines: 20,
                      style: TextStyle(
                        color: Color(0xFF1E1E1E),
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 50, horizontal: 25),
            child: Responsive(
              runAlignment: WrapAlignment.center,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                if (context.width <= 897.0)
                  Div(
                    divison: Division(colXL: 4, colL: 5, colM: 10, colS: 10, colXS: 10),
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Pre-Historic'.tr,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 50,
                              fontFamily: 'JawaPalsu',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                Div(
                  divison: Division(colXL: 6, colL: 5, colM: 11, colS: 11, colXS: 11),
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 25),
                    child: Text(
                      "prehistoric_desc".tr,
                      textAlign: TextAlign.justify,
                      maxLines: 20,
                      style: TextStyle(
                        color: Color(0xFF1E1E1E),
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                if (context.width >= 897.0)
                  Div(
                    divison: Division(colXL: 4, colL: 5, colM: 10, colS: 10, colXS: 10),
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Pre-Historic'.tr,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 50,
                              fontFamily: 'JawaPalsu',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          ),
          Footer(),
        ],
      ),
    );
  }
}
