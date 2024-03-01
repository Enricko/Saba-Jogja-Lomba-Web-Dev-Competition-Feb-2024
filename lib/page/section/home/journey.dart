import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_ui/responsive_ui.dart';
import 'package:loop_page_view/loop_page_view.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Journey extends StatelessWidget {
  Journey({super.key});
  var controller = Get.put(CarouselJourneyController());

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.antiAlias,
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 112),
          width: context.width,
          alignment: Alignment.center,
          child: Column(
            children: [
              Responsive(
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  Div(
                    divison: Division(
                      colXL: 4,
                      colL: 4,
                      colM: 10,
                      colS: 10,
                      colXS: 10,
                    ),
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                      child: Text(
                        'journey_title'.tr,
                        style: context.theme.textTheme.titleLarge!.copyWith(
                          fontFamily: "JawaPalsu",
                          fontSize: 50,
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
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
                      margin: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 25),
                            child: Text(
                              "journey_description".tr,
                              textAlign: TextAlign.justify,
                              style: context.theme.textTheme.bodyMedium!.copyWith(
                                fontSize: 18,
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
              SizedBox(height: 50,),
              Container(
                height: context.height * .7,
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
            ],
          ),
        ),
      ],
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
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Destination',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25.40,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w800,
                            height: 0,
                          ),
                        ),
                      ),
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

class CarouselJourneyController extends GetxController {
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
