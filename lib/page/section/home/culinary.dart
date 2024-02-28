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
          alignment: Alignment.center,
          child: Responsive(
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              if (context.width < 897.0)
                Div(
                  divison: Division(
                    colXL: 5,
                    colL: 5,
                    colM: 10,
                    colS: 10,
                    colXS: 10,
                  ),
                  child: Wrap(
                    alignment: WrapAlignment.center,
                    children: controller.culinaryList.value.map((e) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 150,
                            width: 150,
                            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              color: Colors.white,
                              image: DecorationImage(
                                image: AssetImage(e.value['image']),
                                fit: BoxFit.cover,
                              ),
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
                          Text(
                            e.value['title'],
                            textAlign: TextAlign.justify,
                            style: context.theme.textTheme.bodyMedium!.copyWith(
                              fontSize: 21.12,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                        ],
                      );
                    }).toList(),
                  ),
                ),
              Div(
                divison: Division(
                  colXL: 6,
                  colL: 6,
                  colM: 10,
                  colS: 10,
                  colXS: 10,
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
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
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
              if (context.width >= 897.0)
                Div(
                  divison: Division(
                    colXL: 5,
                    colL: 5,
                    colM: 10,
                    colS: 10,
                    colXS: 10,
                  ),
                  child: Wrap(
                    alignment: WrapAlignment.center,
                    children: controller.culinaryList.value.map((e) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 150,
                            width: 150,
                            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              color: Colors.white,
                              image: DecorationImage(
                                image: AssetImage(e.value['image']),
                                fit: BoxFit.cover,
                              ),
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
                          Text(
                            e.value['title'],
                            textAlign: TextAlign.justify,
                            style: context.theme.textTheme.bodyMedium!.copyWith(
                              fontSize: 21.12,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                        ],
                      );
                    }).toList(),
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
