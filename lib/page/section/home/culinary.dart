import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loop_page_view/loop_page_view.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_ui/responsive_ui.dart';

class Culinary extends StatelessWidget {
  Culinary({
    super.key,
  });
  var controller = Get.put(CarouselCulinaryController());

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 112),
          width: context.width,
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            image: DecorationImage(
              image: AssetImage("assets/angkringan.png"),
              fit: BoxFit.cover,
              filterQuality: FilterQuality.medium,
              colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.2),
                BlendMode.srcATop,
              ),
            ),
          ),
          child: Responsive(
            crossAxisAlignment: WrapCrossAlignment.start,
            children: [
              Div(
                divison: Division(
                  colXL: 6,
                  colL: 6,
                  colM: 10,
                  colS: 10,
                  colXS: 10,
                  offsetXL: 1,
                  offsetL: 1,
                  offsetM: 1,
                  offsetS: 1,
                  offsetXS: 1,
                ),
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'culinary_title'.tr,
                        textAlign: TextAlign.center,
                        style: context.theme.textTheme.titleLarge!.copyWith(
                          fontFamily: "JawaPalsu",
                          fontSize: 50,
                              color: Color(0xFFECECEC),
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 25),
                        child: Text(
                          "culinary_desc".tr,
                          textAlign: TextAlign.justify,
                          style: context.theme.textTheme.bodyMedium!.copyWith(
                            fontSize: 18,
                              color: Color(0xFFECECEC),
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                              height: 2,
                          ),
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(18),
                        child: ElevatedButton(
                          onPressed: () {},
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

class CarouselCulinaryController extends GetxController {
  RxList<RxMap> culinaryList = [
    {
      "image": "assets/culinary/bakpia.png",
      "title": "Bakpia",
      "url": "",
    }.obs,
    {
      "image": "assets/culinary/brongkos.png",
      "title": "Brongkos",
      "url": "",
    }.obs,
    {
      "image": "assets/culinary/geblek.png",
      "title": "Geblek",
      "url": "",
    }.obs,
    {
      "image": "assets/culinary/gudeg.png",
      "title": "Gudeg",
      "url": "",
    }.obs,
    {
      "image": "assets/culinary/sate_kelatak.png",
      "title": "Sate Kelatak",
      "url": "",
    }.obs,
    {
      "image": "assets/culinary/wedang_ronde.png",
      "title": "Wedang Ronde",
      "url": "",
    }.obs,
  ].obs;
}
