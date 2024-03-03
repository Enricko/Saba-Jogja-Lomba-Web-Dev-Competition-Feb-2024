import 'package:budaya_jogja/page/layout.dart';
import 'package:budaya_jogja/page/section/home/footer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_ui/responsive_ui.dart';

class Places extends StatelessWidget {
  Places({super.key});

  List<Map<String, dynamic>> exploreList = [
    {
      "image": "assets/journey/kampoeng_ketandan.png",
      "title": "Malioboro",
      "location":
          "Jl. Ketandan Kulon, Ngupasan, Kec. Gondomanan, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55122",
      "rating": 4.6,
    },
    {
      "image": "assets/journey/kraton.png",
      "title": "Keraton Ngayogyakarta Hadiningrat",
      "location":
          "Jl. Rotowijayan Blok No. 1, Panembahan, Kecamatan Kraton, Kota Yogyakarta, Daerah Istimewa Yogyakarta",
      "rating": 4.6,
    },
    {
      "image": "assets/journey/prambanan.png",
      "title": "Candi Prambanan",
      "location":
          "Jl. Raya Solo - Yogyakarta No.16, Kranggan, Bokoharjo, Kec. Prambanan, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55571",
      "rating": 4.6,
    },
    {
      "image": "assets/journey/kampung_wisata_tamansari.jpeg",
      "title": "Kampung Wisata Taman Sari",
      "location": "Patehan, Kecamatan Kraton, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55133",
      "rating": 4.6,
    },
    {
      "image": "assets/journey/malioboro.jpeg",
      "title": "Malioboro",
      "location":
          "Jl. Malioboro, Suryatmajan, Kec. Danurejan, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55271",
      "rating": 4.6,
    },
    {
      "image": "assets/journey/pantai_parangtritis.jpeg",
      "title": "Pantai Parangtritis",
      "location":
          "Pantai, Parangtritis, Kec. Kretek, Kabupaten Bantul, Daerah Istimewa Yogyakarta 55772",
      "rating": 4.6,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Layout(
      isShow: false,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 520,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                image: AssetImage("assets/places.png"),
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
                          'The Magic Land of'.tr,
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
                      "places_desc".tr,
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
            margin: EdgeInsets.symmetric(vertical: 100),
            child: Text(
              "let's explore the most recommended tourist attractions !".tr,
              style: TextStyle(
                color: Color(0xFFFF634F),
                fontSize: 32,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w700,
                height: 0,
              ),
            ),
          ),
          Container(
            height: context.height * .7,
            padding: EdgeInsets.symmetric(vertical: 50, horizontal: 25),
            child: Responsive(
              runAlignment: WrapAlignment.center,
              alignment: WrapAlignment.center,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: exploreList.map(
                (e) {
                  return Div(
                    divison: Division(colXL: 3, colL: 4, colM: 6, colS: 6, colXS: 6),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 25, horizontal: 10),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            image: DecorationImage(
                              image: AssetImage(e["image"]),
                              fit: BoxFit.cover,
                              colorFilter: ColorFilter.mode(
                                Colors.black.withOpacity(0.2),
                                BlendMode.srcATop,
                              ),
                            ),
                          ),
                          child: Stack(
                            children: [
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Container(
                                  color: Colors.white,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        e['title'],
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 11.67,
                                          fontStyle: FontStyle.italic,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w600,
                                          height: 0.09,
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
                    ),
                  );
                },
              ).toList(),
            ),
          ),
          Footer()
        ],
      ),
    );
  }
}
