import 'package:budaya_jogja/page/layout.dart';
import 'package:budaya_jogja/page/section/home/footer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:loop_page_view/loop_page_view.dart';
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

  var controller = Get.put(CarouselPlacesController());

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
            padding: EdgeInsets.symmetric(vertical: 50, horizontal: 25),
            child: Responsive(
              runAlignment: WrapAlignment.center,
              alignment: WrapAlignment.center,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: exploreList.map(
                (e) {
                  return Div(
                    divison: Division(colXL: 3, colL: 4, colM: 6, colS: 6, colXS: 6),
                    child: SizedBox(
                        height: context.height * .4,
                        child: HoverScaleContainer(
                          image: e['image'],
                          title: e['title'],
                          location: e['location'],
                          rating: e['rating'],
                        )),
                  );
                },
              ).toList(),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(
              vertical: 100,
              horizontal: 25,
            ),
            alignment: Alignment.centerRight,
            child: Text(
              "Find out some history of tourist attractions !".tr,
              textAlign: TextAlign.end,
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
            margin: EdgeInsets.symmetric(
              vertical: 100,
              horizontal: 25,
            ),
            color: Colors.white,
            child: Row(
              children: [
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Container(
                    height: context.height * .7,
                    padding: EdgeInsets.all(8),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      image: DecorationImage(
                        image: AssetImage("assets/museum_yogya.png"),
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
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Museum Monumen Jogja Kembali",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 26,
                                  fontStyle: FontStyle.italic,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w700,
                                  height: 0,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              RichText(
                                text: TextSpan(
                                  children: [
                                    WidgetSpan(
                                      child: Icon(
                                        Icons.location_on_outlined,
                                        color: Colors.white,
                                      ),
                                    ),
                                    TextSpan(
                                      text:
                                          "Jl. Jend. Sudirman, Gowongan, Kec. Jetis, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55233",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                        height: 0,
                                      ),
                                    ),
                                  ],
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    "4.5".toString(),
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  RatingBarIndicator(
                                    rating: 4.5,
                                    itemBuilder: (context, index) => Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    itemCount: 5,
                                    itemSize: 20.0,
                                    direction: Axis.horizontal,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                if (context.width > 860)
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Sejarah',
                            style: TextStyle(
                              color: Color(0xFFFF634F),
                              fontSize: 28,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Monumen Yogya Kembali dibangun pada tanggal 29 Juni 1985 dengan upacara tradisional penanaman kepala kerbau dan peletakan batu pertama oleh Sri Sultan Hamengkubuwana IX dan Sri Paduka Paku Alam VIII. Gagasan untuk mendirikan monumen ini dilontarkan oleh kolonel Soegiarto, selaku walikota Yogyakarta pada tahun 1983. Nama Yogya Kembali dipilih dengan maksud sebagai tetenger (peringatan) dari peristiwa sejarah ditariknya tentara pendudukan Belanda dari ibu kota RI di Yogyakarta pada waktu itu, tanggal 29 Juni 1949. Hal ini merupakan tanda awal bebasnya bangsa Indonesia dari kekuasaan pemerintahan Belanda.\n\nPembangunan monumen ini dilakukan dengan memperhitungkan beberapa faktor penting. Titik pusat bangunan ini merupakan sebuah titik yang secara imajiner menghubungkan beberapa titik penting di Yogyakarta yaitu Keraton Yogyakarta, Tugu Yogyakarta, Gunung Merapi, Parangtritis Panggung Krapyak. Titik ini sendiri disebut sebagai Garis Imajiner Yogyakarta dan penanda dari titik imajiner ini sendiri berada pada lantai 3 bangunan monumen ini.",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              'wiki/Museum_Monumen_Yogya_Kembali',
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontStyle: FontStyle.italic,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w300,
                                height: 0,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          ),
          Container(
            height: context.height * .7,
            margin: EdgeInsets.symmetric(
              vertical: 100,
              horizontal: 25,
            ),
            color: Colors.white,
            child: Row(
              children: [
                if (context.width > 860)
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Sejarah',
                            style: TextStyle(
                              color: Color(0xFFFF634F),
                              fontSize: 28,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Monumen ini dibangun oleh Sri Sultan Hamengkubuwono I pada tahun 1755. Dikenal sebagai Tugu Golong-Gilig, dan dibangun dalam semangat persatuan rakyat. Di puncak tugu berbentuk bulat (golong) dan tiangnya berbentuk silindris (gilig), demikianlah namanya. Ketinggian monumen tersebut adalah 25 meter. Dibangun di Garis Imajiner Yogyakarta yang menghubungkan laut selatan, Keraton Ngayogyakarta Hadiningrat, dan Gunung Merapi. Pada saat bertapa, konon Sultan Yogyakarta saat itu menggunakan tugu ini sebagai patokan untuk menghadap ke puncak Gunung Merapi.\n\nMonumen ini runtuh saat gempa bumi besar yang terjadi pada 10 Juni 1867. Pada tahun 1889, pemerintah kolonial Hindia Belanda merenovasi monumen dengan bentuk persegi. Bagian atas monumen dibangun dengan bentuk kerucut, bukan berbentuk bulat seperti sebelumnya, dengan bola kecil di ujungnya. Ketinggian monumennya juga berkurang dari 25 meter menjadi 15 meter. Sejak itu, monumen ini juga dikenal pada saat itu sebagai De Witte Paal (Monumen Putih)",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              'wiki/Tugu_Yogyakarta',
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontStyle: FontStyle.italic,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w300,
                                height: 0,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Container(
                    height: context.height * .7,
                    padding: EdgeInsets.all(8),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      image: DecorationImage(
                        image: AssetImage("assets/tugu_yogya.png"),
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
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Museum Monumen Jogja Kembali",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 26,
                                  fontStyle: FontStyle.italic,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w700,
                                  height: 0,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              RichText(
                                text: TextSpan(
                                  children: [
                                    WidgetSpan(
                                      child: Icon(
                                        Icons.location_on_outlined,
                                        color: Colors.white,
                                      ),
                                    ),
                                    TextSpan(
                                      text:
                                          "Jl. Ring Road Utara, Jongkang, Sariharjo, Kec. Ngaglik, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55581",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                        height: 0,
                                      ),
                                    ),
                                  ],
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    "4.5".toString(),
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  RatingBarIndicator(
                                    rating: 4.5,
                                    itemBuilder: (context, index) => Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    itemCount: 5,
                                    itemSize: 20.0,
                                    direction: Axis.horizontal,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 500,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                image: AssetImage("assets/places_1.png"),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.5),
                  BlendMode.srcATop,
                ),
              ),
              boxShadow: [
                new BoxShadow(
                  color: Colors.black,
                  blurRadius: 20.0,
                ),
              ],
            ),
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(25),
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
                )
              ],
            ),
          ),
          Container(
                height: context.height * .7,
                margin: EdgeInsets.symmetric(vertical: 100,horizontal: 25),
                color: Colors.transparent,
                child: LoopPageView.builder(
                  itemCount: controller.journeyList.value.length,
                  controller: controller._pageController.value,
                  scrollDirection: Axis.horizontal,
                  pageSnapping: false,
                  itemBuilder: (context, index) {
                    var data = controller.journeyList.value[index];
                    return HoverScaleContainer(
                      image: data['image'],
                      title: data['title'],
                      location: data['location'],
                      rating: data['rating'],
                    );
                  },
                ),
              ),
          Container(
            width: double.infinity,
            height: 500,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                image: AssetImage("assets/places_2.png"),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.5),
                  BlendMode.srcATop,
                ),
              ),
              boxShadow: [
                new BoxShadow(
                  color: Colors.black,
                  blurRadius: 20.0,
                ),
              ],
            ),
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: const EdgeInsets.all(25),
                    child: Text(
                      "a city that never sleeps with the arts !".tr,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: context.height * .7,
            margin: EdgeInsets.symmetric(
              vertical: 100,
              horizontal: 25,
            ),
            color: Colors.white,
            child: Row(
              children: [
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Container(
                    height: context.height * .7,
                    padding: EdgeInsets.all(8),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      image: DecorationImage(
                        image: AssetImage("assets/museum_yogya.png"),
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
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Taman Budaya Yogyakarta",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 26,
                                  fontStyle: FontStyle.italic,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w700,
                                  height: 0,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              RichText(
                                text: TextSpan(
                                  children: [
                                    WidgetSpan(
                                      child: Icon(
                                        Icons.location_on_outlined,
                                        color: Colors.white,
                                      ),
                                    ),
                                    TextSpan(
                                      text:
                                          "Jl. Sriwedani No.1, Ngupasan, Kec. Gondomanan, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55122",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                        height: 0,
                                      ),
                                    ),
                                  ],
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    "4.5".toString(),
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  RatingBarIndicator(
                                    rating: 4.5,
                                    itemBuilder: (context, index) => Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    itemCount: 5,
                                    itemSize: 20.0,
                                    direction: Axis.horizontal,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                if (context.width > 860)
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Sejarah',
                            style: TextStyle(
                              color: Color(0xFFFF634F),
                              fontSize: 28,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Taman Budaya merupakan pusat kegiatan seni dan budaya yang berperan penting dalam mempromosikan dan melestarikan warisan budaya suatu daerah. Melalui berbagai acara seperti pertunjukan seni tradisional, konser musik, pameran seni rupa, dan workshop budaya, taman budaya menjadi tempat vital bagi masyarakat lokal maupun wisatawan untuk belajar dan mengapresiasi kekayaan budaya yang ada. Mereka tidak hanya menjadi tempat hiburan, tetapi juga menjadi wadah bagi pengembangan serta pelestarian seni dan budaya yang menjadi identitas suatu komunitas.\n\nSelain itu, taman budaya juga berperan dalam meningkatkan kesadaran akan pentingnya melestarikan budaya lokal dan menciptakan hubungan yang lebih erat antara generasi muda dengan tradisi yang telah ada sejak zaman dulu. Dengan menyelenggarakan acara-acara yang mempromosikan seni dan budaya, taman budaya menciptakan ruang untuk pertukaran budaya dan pemahaman yang lebih dalam antara berbagai kelompok masyarakat. Dengan demikian, taman budaya tidak hanya menjadi tempat untuk menikmati seni, tetapi juga menjadi wahana untuk memperkaya pengalaman dan menjaga keberlanjutan budaya suatu bangsa.",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              'wiki/Museum_Monumen_Yogya_Kembali',
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontStyle: FontStyle.italic,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w300,
                                height: 0,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          ),
          Footer()
        ],
      ),
    );
  }
}

class HoverScaleContainer extends StatefulWidget {
  final String image;
  final String title;
  final String location;
  final double rating;

  const HoverScaleContainer({
    Key? key,
    required this.image,
    required this.title,
    required this.location,
    required this.rating,
  }) : super(key: key);

  @override
  _HoverScaleContainerState createState() => _HoverScaleContainerState();
}

class _HoverScaleContainerState extends State<HoverScaleContainer> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;
        final height = constraints.maxHeight;
        return MouseRegion(
          onEnter: (_) => setState(() => _isHovered = true),
          onExit: (_) => setState(() => _isHovered = false),
          child: AnimatedContainer(
            color: Colors.transparent,
            duration: Duration(milliseconds: 1000),
            child: Transform.scale(
              scale: _isHovered ? 1 : .9,
              child: Center(
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 25, horizontal: 10),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    image: DecorationImage(
                      image: AssetImage(widget.image),
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
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.title,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 26,
                                fontStyle: FontStyle.italic,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w700,
                                height: 0,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            RichText(
                              text: TextSpan(
                                children: [
                                  WidgetSpan(
                                    child: Icon(
                                      Icons.location_on_outlined,
                                      color: Colors.white,
                                    ),
                                  ),
                                  TextSpan(
                                    text: widget.location,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                    ),
                                  ),
                                ],
                              ),
                              maxLines: _isHovered ? 6 : 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  widget.rating.toString(),
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                RatingBarIndicator(
                                  rating: widget.rating,
                                  itemBuilder: (context, index) => Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  itemCount: 5,
                                  itemSize: 20.0,
                                  direction: Axis.horizontal,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}


class CarouselPlacesController extends GetxController {
  Rx<LoopPageController?> _pageController = Rx<LoopPageController?>(null);
  var _currentPage = 0.obs;
  RxList<RxMap> journeyList = [
    {
      "image": "assets/journey/kampoeng_ketandan.png",
      "title": "Malioboro",
      "location":
          "Jl. Ketandan Kulon, Ngupasan, Kec. Gondomanan, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55122",
      "rating": 4.6,
    }.obs,
    {
      "image": "assets/journey/kraton.png",
      "title": "Keraton Ngayogyakarta Hadiningrat",
      "location":
          "Jl. Rotowijayan Blok No. 1, Panembahan, Kecamatan Kraton, Kota Yogyakarta, Daerah Istimewa Yogyakarta",
      "rating": 4.6,
    }.obs,
    {
      "image": "assets/journey/prambanan.png",
      "title": "Candi Prambanan",
      "location":
          "Jl. Raya Solo - Yogyakarta No.16, Kranggan, Bokoharjo, Kec. Prambanan, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55571",
      "rating": 4.6,
    }.obs,
    {
      "image": "assets/journey/kampung_wisata_tamansari.jpeg",
      "title": "Kampung Wisata Taman Sari",
      "location": "Patehan, Kecamatan Kraton, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55133",
      "rating": 4.6,
    }.obs,
    {
      "image": "assets/journey/malioboro.jpeg",
      "title": "Malioboro",
      "location":
          "Jl. Malioboro, Suryatmajan, Kec. Danurejan, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55271",
      "rating": 4.6,
    }.obs,
    {
      "image": "assets/journey/pantai_parangtritis.jpeg",
      "title": "Pantai Parangtritis",
      "location":
          "Pantai, Parangtritis, Kec. Kretek, Kabupaten Bantul, Daerah Istimewa Yogyakarta 55772",
      "rating": 4.6,
    }.obs,
  ].obs;

  void _nextPage() {
    if (_currentPage.value < journeyList.length - 1) {
      _currentPage.value++;
    } else {
      _currentPage.value = 0;
    }
    _pageController.value!.animateToPage(
      _currentPage.value,
      duration: Duration(milliseconds: 350),
      curve: Curves.fastOutSlowIn,
    );
  }

  void _previousPage() {
    if (_currentPage.value > 0) {
      _currentPage.value--;
    } else {
      _currentPage.value = journeyList.length - 1;
    }
    _pageController.value!.animateToPage(
      _currentPage.value,
      duration: Duration(milliseconds: 350),
      curve: Curves.fastOutSlowIn,
    );
  }

  @override
  void onInit() {
    super.onInit();
    _pageController.value =
        LoopPageController(initialPage: _currentPage.value, viewportFraction: 1 / 3);
  }

  @override
  void onClose() {
    super.onClose();
  }
}
