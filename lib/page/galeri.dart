import 'package:budaya_jogja/page/layout.dart';
import 'package:budaya_jogja/page/section/home/footer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loop_page_view/loop_page_view.dart';

class Galeri extends StatelessWidget {
  Galeri({super.key});

  var controller = Get.put(CarouselGaleriController());
  @override
  Widget build(BuildContext context) {
    return Layout(
      isShow: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: double.infinity,
            height: 520,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                image: AssetImage("assets/galeri.png"),
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
          Container(
            margin: EdgeInsets.symmetric(vertical: 100),
            child: Text(
              'Explore the Charm of Yogyakarta through the lens'.tr,
              style: TextStyle(
                color: Color(0xFFFF634F),
                fontSize: 32,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w700,
                height: 0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
            child: Image.asset(
              "assets/galeri_group.png",
              filterQuality: FilterQuality.high,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 50),
            child: Text(
              'be a part of this journey !'.tr,
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
            height: 540,
            child: LoopPageView.builder(
              controller: controller._pageController.value,
              itemCount: controller.journeyList.value.length,
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.symmetric(vertical: 25, horizontal: 10),
                  alignment: Alignment.center,
                  child: Image.asset(
                    controller.journeyList.value[index],
                    filterQuality: FilterQuality.medium,
                    fit: BoxFit.fitHeight,
                  ),
                );
              },
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 50),
            child: Text(
              "don't forget to always capture your memories".tr,
              style: TextStyle(
                color: Color(0xFFFF634F),
                fontSize: 32,
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

class CarouselGaleriController extends GetxController {
  Rx<LoopPageController?> _pageController = Rx<LoopPageController?>(null);
  var _currentPage = 0.obs;
  RxList journeyList = [
    "assets/journey/kampoeng_ketandan.png",
    "assets/journey/kraton.png",
    "assets/journey/prambanan.png",
    "assets/journey/kampung_wisata_tamansari.jpeg",
    "assets/journey/malioboro.jpeg",
    "assets/journey/pantai_parangtritis.jpeg",
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
