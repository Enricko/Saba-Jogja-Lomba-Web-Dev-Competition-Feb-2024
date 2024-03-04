import 'package:budaya_jogja/page/layout.dart';
import 'package:budaya_jogja/page/section/home/footer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:responsive_ui/responsive_ui.dart';

class Kuliner extends StatelessWidget {
  Kuliner({super.key});
  List<Map<String, dynamic>> kulinerPlacesList = [
    {
      "image": "assets/culinary/gudeg_jum.png",
      "title": "Gudeg Yu Djum Pusat",
      "location":
          "Jl. Kaliurang Km. 4,5 CT III/22 Gang Cokrowolo Karangasem, Mbarek, Jl. Agro, Kocoran, Caturtunggal, Kec. Depok, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55281",
      "rating": 4.6,
    },
    {
      "image": "assets/culinary/bakmi_jawa.png",
      "title": "Bakmi Jowo Mbah Gito",
      "location":
          "Jl. Nyi Ageng Nis No.9, Rejowinangun, Kec. Kotagede, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55171",
      "rating": 4.6,
    },
    {
      "image": "assets/culinary/bakpia_pathok.png",
      "title": "Bakpia Pathok 25 Pathok Jaya",
      "location":
          "Jl. Karel Sasuit Tubun No.12-14, Ngampilan, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55261",
      "rating": 4.6,
    },
    {
      "image": "assets/culinary/soto_kadipiro.png",
      "title": "Warung Soto Kadipiro Asli",
      "location":
          "Jl. Wates No.33, Kdipiro, Ngestiharjo, Kec. Kasihan, Kabupaten Bantul, Daerah Istimewa Yogyakarta 55182",
      "rating": 4.6,
    },
    {
      "image": "assets/culinary/brongkos_handayani.png",
      "title": "Warung Soto Kadipiro Asli",
      "location":
          "Jl. Gading No.2, Patehan, Kecamatan Kraton, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55133",
      "rating": 4.6,
    },
    {
      "image": "assets/culinary/kopi_joss_lik.png",
      "title": "Kopi Joss Lik Man",
      "location":
          "Ps. Kranggan, Jl. Poncowinatan No.7, Gowongan, Kec. Jetis, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55232",
      "rating": 4.6,
    },
  ];

  List<Map<String, dynamic>> kulinerList = [
    {
      "image": "assets/culinary/gudeg.png",
      "title": "Gudeg",
      "made_of":
          "Terbuat dari nangka muda yang dimasak dengan santan, memiliki rasa manis gurih dan tekstur lembut berserat.",
      "rating": 4.6,
    },
    {
      "image": "assets/culinary/oseng_mercon.png",
      "title": "Oseng Mercon",
      "made_of":
          "Oseng mercon adalah hidangan yang terbuat dari potongan nangka muda yang dimasak dengan santan. Memiliki cita rasa manis gurih dengan tekstur lembut berserat.",
      "rating": 4.6,
    },
    {
      "image": "assets/culinary/kopi_joss.png",
      "title": "Kopi Joss",
      "made_of":
          "Kopi joss, kopi istimewa , dibuat dengan cara menambahkan arang panas langsung ke dalam gelas kopi panas, menciptakan cita rasa kental dan aromatik yang khas.",
      "rating": 4.6,
    },
    {
      "image": "assets/culinary/wedang_uwuh.png",
      "title": "Wedang Uwuh",
      "made_of":
          "Wedang uwuh adalah minuman yang terbuat dari campuran rempah-rempah seperti serai, jahe, kayu manis, cengkeh, dan daun pandan.",
      "rating": 4.6,
    },
    {
      "image": "assets/culinary/bakpia_pathuk.png",
      "title": "Bakpia Pathuk",
      "made_of":
          "Kue yang berbentuk bulat pipih, terbuat dari campuran kacang hijau dengan gula, yang dibungkus dengan tepung, lalu dipanggang",
      "rating": 4.6,
    },
    {
      "image": "assets/culinary/brongkos.png",
      "title": "Brongkos",
      "made_of":
          "Masakan dengan bahan utama kacang kedelai hitam dan daging sapi atau ayam, disajikan dengan rempah-rempah khas.",
      "rating": 4.6,
    },
    {
      "image": "assets/culinary/nasi_tiwul.png",
      "title": "Nasi Tiwul",
      "made_of":
          "yang terbuat dari tepung sagu yang difermentasi. Biasanya disajikan dengan lauk tambahan seperti ayam atau sayuran",
      "rating": 4.6,
    },
    {
      "image": "assets/culinary/bakmi_jawa.png",
      "title": "Bakmi Jawa",
      "made_of":
          "Yang disajikan dengan kuah kaldu ayam atau sapi, dan diberi tambahan irisan daging ayam, sayuran, telur rebus, dan bumbu-bumbu tradisional.",
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
                          'The Sweet Taste of'.tr,
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
                      // "places_desc".tr,
                      "Yogyakarta memang menyimpan banyak keajaiban di berbagai tempat wisatanya. Dari keindahan alam seperti Gunung Merapi dan Pantai Parangtritis, hingga warisan budaya seperti Candi Borobudur dan Keraton Yogyakarta, setiap sudut kota ini memancarkan pesona yang mengagumkan. Selain itu, kelezatan kuliner tradisional seperti gudeg dan sate kere juga tidak boleh dilewatkan. Ayo, mari menjelajahi lebih banyak lagi keindahan Yogyakarta yang menakjubkan ini dan membuat kenangan tak terlupakan bersama orang-orang tercinta!",
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
              "Explore the most recommended taste of life !".tr,
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
              children: kulinerList.map(
                (e) {
                  return Div(
                    divison: Division(colXL: 3, colL: 4, colM: 6, colS: 6, colXS: 6),
                    child: SizedBox(
                        height: context.height * .4,
                        child: HoverScaleContainerKuliner(
                          image: e['image'],
                          title: e['title'],
                          made_of: e['made_of'],
                          rating: e['rating'],
                        )),
                  );
                },
              ).toList(),
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
                      "But, where i can find a Special Place ?".tr,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(25),
                    child: Text(
                      "What's more satisfying than eating ?".tr,
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
            padding: EdgeInsets.symmetric(vertical: 50, horizontal: 25),
            child: Responsive(
              runAlignment: WrapAlignment.center,
              alignment: WrapAlignment.center,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: kulinerPlacesList.map(
                (e) {
                  return Div(
                    divison: Division(colXL: 4, colL: 4, colM: 6, colS: 6, colXS: 6),
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
            margin: EdgeInsets.symmetric(vertical: 100,horizontal: 50),
            alignment: Alignment.centerLeft,
            child: Text(
              "Try it out! They have a delicious menu that's sure to make your taste buds go wild !".tr,
              maxLines: 4,
              style: TextStyle(
                color: Color(0xFFFF634F),
                fontSize: 36,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w700,
                height: 0,
              ),
            ),
          ),
          Footer(),
        ],
      ),
    );
  }
}


class HoverScaleContainerKuliner extends StatefulWidget {
  final String image;
  final String title;
  final String made_of;
  final double rating;

  const HoverScaleContainerKuliner({
    Key? key,
    required this.image,
    required this.title,
    required this.made_of,
    required this.rating,
  }) : super(key: key);

  @override
  _HoverScaleContainerKulinerState createState() => _HoverScaleContainerKulinerState();
}

class _HoverScaleContainerKulinerState extends State<HoverScaleContainerKuliner> {
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
                                      Icons.restaurant_outlined,
                                      color: Colors.white,
                                    ),
                                  ),
                                  TextSpan(
                                    text: widget.made_of,
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
