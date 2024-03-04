import 'package:budaya_jogja/page/layout.dart';
import 'package:budaya_jogja/page/section/home/footer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_ui/responsive_ui.dart';

class Event extends StatelessWidget {
  List<Map<String, dynamic>> eventList = [
    {
      "image": "assets/event1.png",
      "title": "Jumenengan Dalem",
      "subtitle": "traditional ceremony",
      "desc":
          "Upacara adat di Keraton Yogyakarta yang dilakukan untuk mengangkat seorang putra mahkota sebagai raja yang baru, disertai dengan prosesi upacara keagamaan dan budaya yang kaya makna.",
    },
    {
      "image": "assets/event2.png",
      "title": "Hajad Dalem Labuhan",
      "subtitle": "traditional ceremony",
      "desc":
          "Upacara adat di Keraton Yogyakarta yang melibatkan penyelenggaraan ritual keagamaan dan pemberian persembahan kepada Sang Hyang Widhi, serta dihadiri oleh keluarga kerajaan dan pejabat istana.",
    },
    {
      "image": "assets/event3.png",
      "title": "Kirab",
      "subtitle": "traditional ceremony",
      "desc":
          "pesta rakyat di mana orang-orang berkumpul untuk merayakan kesatuan, menghormati tradisi, dan mengekspresikan identitas budaya mereka melalui prosesi perarakan yang gemerlap dan meriah di jalan-jalan kota.",
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
                image: AssetImage("assets/event_bg.png"),
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
                          'Charming event in'.tr,
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
                      "Yogyakarta, tempat di mana upacara adat tidak hanya sekadar tradisi, tetapi juga kehidupan. Ada yang percaya bahwa setiap langkah yang mereka ambil selama upacara adat adalah ikatan baru yang dibuat dengan leluhur mereka, sementara yang lain melihatnya sebagai waktu untuk merayakan kekuatan komunitas mereka. Berbagai suku dan etnis memiliki upacara pernikahan yang berbeda, dan setiap upacara ini adalah potongan dari warisan budaya yang kaya dan indah. Masing-masing menghormati nenek moyang mereka dengan cara yang unik, menunjukkan keberagaman yang luar biasa dalam kebudayaan Yogyakarta.",
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
            width: double.infinity,
            height: 500,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                image: AssetImage("assets/event_bg2.png"),
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
                      "the charm of the beauty of traditional ceremonies in Yogyakarta".tr,
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
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 50, horizontal: 25),
            child: Responsive(
              runAlignment: WrapAlignment.center,
              alignment: WrapAlignment.center,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: eventList.map(
                (e) {
                  return Div(
                    divison: Division(colXL: 4, colL: 4, colM: 6, colS: 6, colXS: 6),
                    child: SizedBox(
                        height: context.height * .4,
                        child: HoverScaleContainerEvent(
                          image: e['image'],
                          title: e['title'],
                          subtitle: e['subtitle'],
                          desc: e['desc'],
                        )),
                  );
                },
              ).toList(),
            ),
          ),
          Footer(),
        ],
      ),
    );
  }
}


class HoverScaleContainerEvent extends StatefulWidget {
  final String image;
  final String title;
  final String subtitle;
  final String desc;

  const HoverScaleContainerEvent({
    Key? key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.desc,
  }) : super(key: key);

  @override
  _HoverScaleContainerEventState createState() => _HoverScaleContainerEventState();
}

class _HoverScaleContainerEventState extends State<HoverScaleContainerEvent> {
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
                            Text(
                              widget.subtitle,
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
                                      Icons.people,
                                      color: Colors.white,
                                    ),
                                  ),
                                  TextSpan(
                                    text: widget.desc,
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
