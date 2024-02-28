import 'package:budaya_jogja/page/layout.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_ui/responsive_ui.dart';

import 'section/home/footer.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Layout(
      isShow: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 100),
            child: Responsive(
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                Div(
                  divison: Division(colXL: 6, colL: 6, colM: 11, colS: 11, colXS: 11),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 15),
                    child: Image.asset(
                      "assets/about_us.png",
                      width: 300,
                      fit: BoxFit.cover,
                      filterQuality: FilterQuality.high,
                    ),
                  ),
                ),
                Div(
                  divison: Division(colXL: 5, colL: 5, colM: 11, colS: 11, colXS: 11),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'About Us',
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
                          "about_1".tr,
                          textAlign: TextAlign.justify,
                          style: context.theme.textTheme.bodyMedium!.copyWith(
                            fontSize: 18,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Div(
                  divison: Division(colXL: 11, colL: 11, colM: 11, colS: 11, colXS: 11),
                  child: Text(
                    "about_2".tr,
                    textAlign: TextAlign.justify,
                    style: context.theme.textTheme.bodyMedium!.copyWith(
                      fontSize: 18,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
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
