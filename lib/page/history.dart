import 'package:budaya_jogja/page/section/home/footer.dart';
import 'package:budaya_jogja/page/section/home/mountain.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_ui/responsive_ui.dart';
import 'package:flutter_dash/flutter_dash.dart';

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
      isShow: false,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: double.infinity,
            height: 520,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                image: AssetImage("assets/history.png"),
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
                          style: context.theme.textTheme.titleLarge!.copyWith(
                            fontFamily: "JawaPalsu",
                            fontSize: 50,
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
                      style: context.theme.textTheme.bodyMedium!.copyWith(
                        fontSize: 18,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        height: 2,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 75, vertical: 100),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 25),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 40),
                                height: 25,
                                width: 25,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    width: 1.5,
                                    color: Color(0xFFFF634F),
                                  ),
                                  color: Color(0xFFFF634F),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(bottom: 15),
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      width: 3,
                                      color: Color(
                                        0xFFFF634F,
                                      ),
                                    ),
                                  ),
                                ),
                                child: Text(
                                  'Pre-Historic'.tr,
                                  style: context.theme.textTheme.titleLarge!.copyWith(
                                    fontFamily: "JawaPalsu",
                                    fontSize: 50,
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.only(left: 12),
                                  padding: EdgeInsets.only(left: 40),
                                  decoration: BoxDecoration(
                                    border: Border(
                                      left: BorderSide(
                                        width: 2,
                                        color: Color(
                                          0xFFFF634F,
                                        ),
                                      ),
                                    ),
                                  ),
                                  child: Text(
                                    "prehistoric_desc".tr,
                                    textAlign: TextAlign.justify,
                                    style: context.theme.textTheme.bodyMedium!.copyWith(
                                      fontSize: 18,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                      height: 2,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 25),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 40),
                                height: 25,
                                width: 25,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    width: 1.5,
                                    color: Color(0xFFFF634F),
                                  ),
                                  color: Color(0xFFFF634F),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(bottom: 15),
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      width: 3,
                                      color: Color(
                                        0xFFFF634F,
                                      ),
                                    ),
                                  ),
                                ),
                                child: Text(
                                  'era_mataram'.tr,
                                  style: context.theme.textTheme.titleLarge!.copyWith(
                                    fontFamily: "JawaPalsu",
                                    fontSize: 50,
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.only(left: 12),
                                  padding: EdgeInsets.only(left: 40),
                                  decoration: BoxDecoration(
                                    border: Border(
                                      left: BorderSide(
                                        width: 2,
                                        color: Color(
                                          0xFFFF634F,
                                        ),
                                      ),
                                    ),
                                  ),
                                  child: Text(
                                    "era_mataram_desc".tr,
                                    textAlign: TextAlign.justify,
                                    style: context.theme.textTheme.bodyMedium!.copyWith(
                                      fontSize: 18,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                      height: 2,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 25),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 40),
                                height: 25,
                                width: 25,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    width: 1.5,
                                    color: Color(0xFFFF634F),
                                  ),
                                  color: Color(0xFFFF634F),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(bottom: 15),
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      width: 3,
                                      color: Color(
                                        0xFFFF634F,
                                      ),
                                    ),
                                  ),
                                ),
                                child: Text(
                                  'era_perjuangan'.tr,
                                  style: context.theme.textTheme.titleLarge!.copyWith(
                                    fontFamily: "JawaPalsu",
                                    fontSize: 50,
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.only(left: 12),
                                  padding: EdgeInsets.only(left: 40),
                                  decoration: BoxDecoration(
                                    border: Border(
                                      left: BorderSide(
                                        width: 2,
                                        color: Color(
                                          0xFFFF634F,
                                        ),
                                      ),
                                    ),
                                  ),
                                  child: Text(
                                    "era_perjuangan_desc".tr,
                                    textAlign: TextAlign.justify,
                                    style: context.theme.textTheme.bodyMedium!.copyWith(
                                      fontSize: 18,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                      height: 2,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 25),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 40),
                                height: 25,
                                width: 25,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    width: 1.5,
                                    color: Color(0xFFFF634F),
                                  ),
                                  color: Color(0xFFFF634F),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(bottom: 15),
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      width: 3,
                                      color: Color(
                                        0xFFFF634F,
                                      ),
                                    ),
                                  ),
                                ),
                                child: Text(
                                  'era_modern'.tr,
                                  style: context.theme.textTheme.titleLarge!.copyWith(
                                    fontFamily: "JawaPalsu",
                                    fontSize: 50,
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.only(left: 12),
                                  padding: EdgeInsets.only(left: 40),
                                  decoration: BoxDecoration(
                                    border: Border(
                                      left: BorderSide(
                                        width: 2,
                                        color: Color(
                                          0xFFFF634F,
                                        ),
                                      ),
                                    ),
                                  ),
                                  child: Text(
                                    "era_modern_desc".tr,
                                    textAlign: TextAlign.justify,
                                    style: context.theme.textTheme.bodyMedium!.copyWith(
                                      fontSize: 18,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                      height: 2,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
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
