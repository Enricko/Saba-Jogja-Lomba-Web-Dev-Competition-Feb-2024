import 'package:budaya_jogja/utils/field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_ui/responsive_ui.dart';

import '../../../utils/button.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFE7DBB7),
      width: double.infinity,
      child: Column(
        children: [
          Responsive(
            alignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.center,
            runAlignment: WrapAlignment.center,
            children: [
              Div(
                divison: const Division(
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
                              Image.asset(
                                "assets/logo.png",
                                width: 150,
                                height: 150,
                              ),
                              const Text(
                                "“mlaku - mlaku nganti awakmu lesu”",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontStyle: FontStyle.italic,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                  height: 0,
                                ),
                              ),
                              SizedBox(height: 25,),
                            ],
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(vertical: 15),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                FooterButton(
                                  context: context,
                                  onTap: () {},
                                  textWidget: Text(
                                    "navbar_history".tr.toUpperCase(),
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                ),
                                FooterButton(
                                  context: context,
                                  onTap: () {},
                                  textWidget: Text(
                                    "navbar_script".tr.toUpperCase(),
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    FooterButton(
                                      context: context,
                                      onTap: () {},
                                      textWidget: Text(
                                        "navbar_culture".tr.toUpperCase(),
                                        style: const TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w800,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    FooterButton(
                                      context: context,
                                      onTap: () {},
                                      textWidget: Text(
                                        "social_life".tr.toUpperCase(),
                                        style: const TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    FooterButton(
                                      context: context,
                                      onTap: () {},
                                      textWidget: Text(
                                        "event".tr.toUpperCase(),
                                        style: const TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    FooterButton(
                                      context: context,
                                      onTap: () {},
                                      textWidget: Text(
                                        "warisan".tr.toUpperCase(),
                                        style: const TextStyle(
                                          color: Colors.black,
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
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    FooterButton(
                                      context: context,
                                      onTap: () {},
                                      textWidget: Text(
                                        "travel".tr.toUpperCase(),
                                        style: const TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w800,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    FooterButton(
                                      context: context,
                                      onTap: () {},
                                      textWidget: Text(
                                        "places".tr.toUpperCase(),
                                        style: const TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    FooterButton(
                                      context: context,
                                      onTap: () {},
                                      textWidget: Text(
                                        "kuliner".tr.toUpperCase(),
                                        style: const TextStyle(
                                          color: Colors.black,
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
                                  onTap: () {},
                                  textWidget: Text(
                                    "navbar_galeri".tr.toUpperCase(),
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                ),
                                FooterButton(
                                  context: context,
                                  onTap: () {},
                                  textWidget: Text(
                                    "navbar_about_us".tr.toUpperCase(),
                                    style: const TextStyle(
                                      color: Colors.black,
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
                                  color: Colors.black,
                                  fontSize: 16,
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
                                  color: Colors.black,
                                  fontSize: 16,
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
                              Image.asset(
                                "assets/footer/image 57.png",
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
                                  color: Colors.black,
                                  fontSize: 16,
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
                                      width: 75,
                                      height: 75,
                                      filterQuality: FilterQuality.high,
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    child: Image.asset(
                                      "assets/footer/Instagram.png",
                                      scale: .5,
                                      width: 75,
                                      height: 75,
                                      filterQuality: FilterQuality.high,
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    child: Image.asset(
                                      "assets/footer/TwitterX.png",
                                      scale: .5,
                                      width: 75,
                                      height: 75,
                                      filterQuality: FilterQuality.high,
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    child: Image.asset(
                                      "assets/footer/YouTube.png",
                                      scale: .5,
                                      width: 75,
                                      height: 75,
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
                divison: const Division(
                  colXL: 4,
                  colL: 4,
                  colM: 12,
                  colS: 12,
                  colXS: 12,
                ),
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 25, horizontal: 25),
                  child: Column(
                    children: [
                      const Text(
                        'Leave your Question and Comment below here!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      NeumorphicInputField(
                        prefixIcon: const Icon(Icons.person),
                        text: "Name",
                        onChange: (value) {},
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      NeumorphicInputField(
                        prefixIcon: const Icon(Icons.mail_outline),
                        text: "Alamat Email",
                        onChange: (value) {},
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      DescriptionTextField(
                        text: "pertanyaan dan tanggapan...",
                        onChange: (value) {},
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(18),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(const Color(0xFFDF6951)),
                            padding: MaterialStateProperty.all(
                                const EdgeInsets.symmetric(vertical: 20, horizontal: 25)),
                            textStyle: MaterialStateProperty.all(const TextStyle(fontSize: 30)),
                          ),
                          child: Text(
                            "submit".toUpperCase(),
                            style: const TextStyle(
                              color: Color(0xFFECECEC),
                              fontSize: 16.88,
                              fontFamily: 'Archivo Black',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          Container(
            color: Colors.black,
            height: 50,
            alignment: Alignment.center,
            child: const Text(
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
                child: textWidget,
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
