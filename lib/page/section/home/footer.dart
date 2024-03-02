import 'package:budaya_jogja/utils/field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_ui/responsive_ui.dart';

import '../../../controller/navbar.dart';
import '../../../controller/theme.dart';
import '../../../utils/button.dart';

class Footer extends StatelessWidget {
  Footer({super.key});

  final controllerTheme = Get.find<ThemeController>();
  final controllerNavbar = Get.find<NavbarController>();
  @override
  Widget build(BuildContext context) {
    return Container(
      color: controllerTheme.isDarkMode.value ? Color(0xFFE7DBB7) : Color(0xFF151515),
      width: double.infinity,
      child: Column(
        children: [
          Responsive(
            alignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.center,
            runAlignment: WrapAlignment.center,
            children: [
              Div(
                divison: Division(
                  colXL: 8,
                  colL: 8,
                  colM: 12,
                  colS: 12,
                  colXS: 12,
                ),
                child: Container(
                  width: 500,
                  margin: EdgeInsets.all(25),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Wrap(
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: () {
                                  Get.offNamed("/");
                                  controllerNavbar.scrollOffset.value = 0.0;
                                },
                                child: Image.asset(
                                  "assets/logo.png",
                                  width: 150,
                                  height: 150,
                                ),
                              ),
                              Text(
                                "“mlaku - mlaku nganti awakmu lesu”",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: context.theme.textTheme.titleLarge!.color,
                                  fontSize: 14,
                                  fontStyle: FontStyle.italic,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                  height: 0,
                                ),
                              ),
                              SizedBox(
                                height: 25,
                              ),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 15),
                            child: Wrap(
                              // mainAxisSize: MainAxisSize.min,
                              // mainAxisAlignment: MainAxisAlignment.start,
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                FooterButton(
                                  context: context,
                                  onTap: () {
                                    Get.offNamed("/history");
                                    controllerNavbar.scrollOffset.value = 0.0;
                                  },
                                  textWidget: Text(
                                    "navbar_history".tr.toUpperCase(),
                                    style: TextStyle(
                                      color: context.theme.textTheme.titleLarge!.color,
                                      fontSize: 14,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                ),
                                FooterButton(
                                  context: context,
                                  onTap: () {
                                    Get.offNamed("/aksara");
                                    controllerNavbar.scrollOffset.value = 0.0;
                                  },
                                  textWidget: Text(
                                    "navbar_script".tr.toUpperCase(),
                                    style: TextStyle(
                                      color: context.theme.textTheme.titleLarge!.color,
                                      fontSize: 14,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    FooterButton(
                                      context: context,
                                      onTap: () {},
                                      textWidget: Text(
                                        "navbar_culture".tr.toUpperCase(),
                                        style: TextStyle(
                                          color: context.theme.textTheme.titleLarge!.color,
                                          fontSize: 14,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w800,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    FooterButton(
                                      context: context,
                                      onTap: () {
                                        Get.offNamed("/social_life");
                                        controllerNavbar.scrollOffset.value = 0.0;
                                      },
                                      textWidget: Text(
                                        "social_life".tr.toUpperCase(),
                                        style: TextStyle(
                                          color: context.theme.textTheme.titleLarge!.color,
                                          fontSize: 14,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    FooterButton(
                                      context: context,
                                      onTap: () {},
                                      textWidget: Text(
                                        "event".tr.toUpperCase(),
                                        style: TextStyle(
                                          color: context.theme.textTheme.titleLarge!.color,
                                          fontSize: 14,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    FooterButton(
                                      context: context,
                                      onTap: () {},
                                      textWidget: Text(
                                        "warisan".tr.toUpperCase(),
                                        style: TextStyle(
                                          color: context.theme.textTheme.titleLarge!.color,
                                          fontSize: 14,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    FooterButton(
                                      context: context,
                                      onTap: () {},
                                      textWidget: Text(
                                        "travel".tr.toUpperCase(),
                                        style: TextStyle(
                                          color: context.theme.textTheme.titleLarge!.color,
                                          fontSize: 14,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w800,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    FooterButton(
                                      context: context,
                                      onTap: () {},
                                      textWidget: Text(
                                        "places".tr.toUpperCase(),
                                        style: TextStyle(
                                          color: context.theme.textTheme.titleLarge!.color,
                                          fontSize: 14,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    FooterButton(
                                      context: context,
                                      onTap: () {},
                                      textWidget: Text(
                                        "kuliner".tr.toUpperCase(),
                                        style: TextStyle(
                                          color: context.theme.textTheme.titleLarge!.color,
                                          fontSize: 14,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                FooterButton(
                                  context: context,
                                  onTap: () {
                                    Get.offNamed("/galeri");
                                    controllerNavbar.scrollOffset.value = 0.0;
                                  },
                                  textWidget: Text(
                                    "navbar_galeri".tr.toUpperCase(),
                                    style: TextStyle(
                                      color: context.theme.textTheme.titleLarge!.color,
                                      fontSize: 14,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                ),
                                FooterButton(
                                  context: context,
                                  onTap: () {
                                    Get.offNamed("/about_us");
                                    controllerNavbar.scrollOffset.value = 0.0;
                                  },
                                  textWidget: Text(
                                    "navbar_about_us".tr.toUpperCase(),
                                    style: TextStyle(
                                      color: context.theme.textTheme.titleLarge!.color,
                                      fontSize: 14,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Wrap(
                        crossAxisAlignment: WrapCrossAlignment.start,
                        runAlignment: WrapAlignment.start,
                        alignment: WrapAlignment.start,
                        spacing: 100,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Partner',
                                style: TextStyle(
                                  color: context.theme.textTheme.titleLarge!.color,
                                  fontSize: 18,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w800,
                                  height: 0,
                                ),
                              ),
                              Image.asset(
                                "assets/logo.png",
                                width: 150,
                                height: 150,
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Download on App',
                                style: TextStyle(
                                  color: context.theme.textTheme.titleLarge!.color,
                                  fontSize: 18,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w800,
                                  height: 0,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Image.asset(
                                "assets/footer/image 56.png",
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Image.asset(
                                "assets/footer/image 57.png",
                              ),
                              SizedBox(
                                height: 15,
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Follow us on',
                                style: TextStyle(
                                  color: context.theme.textTheme.titleLarge!.color,
                                  fontSize: 18,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w800,
                                  height: 0,
                                ),
                              ),
                              Wrap(
                                children: [
                                  InkWell(
                                    onTap: () {},
                                    child: Image.asset(
                                      "assets/footer/Facebook.png",
                                      scale: .5,
                                      width: 50,
                                      height: 50,
                                      filterQuality: FilterQuality.high,
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    child: Image.asset(
                                      "assets/footer/Instagram.png",
                                      scale: .5,
                                      width: 50,
                                      height: 50,
                                      filterQuality: FilterQuality.high,
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    child: Image.asset(
                                      "assets/footer/TwitterX.png",
                                      scale: .5,
                                      width: 50,
                                      height: 50,
                                      filterQuality: FilterQuality.high,
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    child: Image.asset(
                                      "assets/footer/YouTube.png",
                                      scale: .5,
                                      width: 50,
                                      height: 50,
                                      filterQuality: FilterQuality.high,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Div(
                divison: Division(
                  colXL: 4,
                  colL: 4,
                  colM: 12,
                  colS: 12,
                  colXS: 12,
                ),
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 25, horizontal: 25),
                  child: Column(
                    children: [
                      Text(
                        'Leave your Question and Comment below here!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: context.theme.textTheme.titleLarge!.color,
                          fontSize: 18,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      NeumorphicInputField(
                        prefixIcon: Icon(Icons.person, color: Colors.black),
                        text: "Name",
                        onChange: (value) {},
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      NeumorphicInputField(
                        prefixIcon: Icon(
                          Icons.mail_outline,
                          color: Colors.black,
                        ),
                        text: "Alamat Email",
                        onChange: (value) {},
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      DescriptionTextField(
                        text: "pertanyaan dan tanggapan...",
                        onChange: (value) {},
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(18),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Color(0xFFDF6951)),
                            padding: MaterialStateProperty.all(
                                EdgeInsets.symmetric(vertical: 20, horizontal: 25)),
                            textStyle: MaterialStateProperty.all(TextStyle(fontSize: 30)),
                          ),
                          child: Text(
                            "submit".toUpperCase(),
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
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          Container(
            color: Color(0xFF1E1E1E),
            height: 50,
            alignment: Alignment.center,
            child: Text(
              'Copyright © 2024 Saba Jogja. All rights reserved',
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget FooterButton({
  required BuildContext context,
  required VoidCallback onTap,
  required Text textWidget,
}) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
    width: 150,
    child: GestureDetector(
      onTap: onTap,
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: AnimatedContainer(
          duration: Duration(seconds: 1),
          child: Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: textWidget,
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
