import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loop_page_view/loop_page_view.dart';

class Culinary extends StatelessWidget {
  Culinary({super.key});
  var controller = Get.put(CarouselCulinaryController());
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 75),
      width: double.infinity,
      child: Column(
        children: [
          Text(
            'culinary_title'.tr,
            style: TextStyle(
              color: Colors.black,
              fontSize: 50.80,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w700,
              height: 0,
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Wrap(
            alignment: WrapAlignment.center,
            children: controller.culinaryList.value.map((e) {
              return Container(
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
              );
            }).toList(),
          ),
          SizedBox(
            height: 25,
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

  // Rx<LoopPageController?> _pageController = Rx<LoopPageController?>(null);
  // var _currentPage = 0.obs;
  // void _nextPage() {
  //   if (_currentPage.value < culinaryList.length - 1) {
  //     _currentPage.value++;
  //   } else {
  //     _currentPage.value = 0;
  //   }
  //   _pageController.value!.animateToPage(
  //     _currentPage.value,
  //     duration: Duration(milliseconds: 350),
  //     curve: Curves.fastOutSlowIn,
  //   );
  // }

  // void _previousPage() {
  //   if (_currentPage.value > 0) {
  //     _currentPage.value--;
  //   } else {
  //     _currentPage.value = culinaryList.length - 1;
  //   }
  //   _pageController.value!.animateToPage(
  //     _currentPage.value,
  //     duration: Duration(milliseconds: 350),
  //     curve: Curves.fastOutSlowIn,
  //   );
  // }

  // void setViewportCarousel(double width) {
  //   _pageController = LoopPageController(
  //           initialPage: _currentPage.value, viewportFraction: 1 / (width / 200).ceil())
  //       .obs;
  // }

  // @override
  // void onInit() {
  //   super.onInit();
  //   setViewportCarousel(Get.width);
  // }

  // @override
  // void onClose() {
  //   super.onClose();
  // }
}

// InkWell(
//             onTap: () {
//               controller._previousPage();

//               controller.setViewportCarousel(context.width);
//             },
//             child: CircleAvatar(
//               backgroundColor: Color(0xffDF6951),
//               radius: 30,
//               child: Icon(
//                 Icons.arrow_back_ios_new_outlined,
//                 color: Colors.white,
//               ),
//             ),
//           ),
//           Expanded(
//             child: Container(
//                 height: 150,
//                 margin: EdgeInsets.symmetric(vertical: 40, horizontal: 50),
//                 child: LayoutBuilder(builder: (context, snapshot) {
//                   return Obx(() {
//                     return LoopPageView.builder(
//                       pageSnapping: false,
//                       itemCount: controller.culinaryList.value.length,
//                       controller: LoopPageController(
//                         initialPage: controller._currentPage.value,
//                         viewportFraction: 1 / (context.width / 200).ceil(),
//                       ),
//                       itemBuilder: (context, index) {
//                         return Container(
//                           height: 150,
//                           width: 150,
//                           margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//                           alignment: Alignment.center,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(20.0),
//                             color: Colors.white,
//                             image: DecorationImage(
//                               image: AssetImage("assets/upacara.png"),
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                           foregroundDecoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(20.0),
//                             gradient: LinearGradient(
//                               colors: [
//                                 Colors.black.withOpacity(.7),
//                                 Colors.transparent,
//                                 Colors.transparent,
//                                 Colors.black.withOpacity(.7)
//                               ],
//                               begin: Alignment.topCenter,
//                               end: Alignment.bottomCenter,
//                               stops: [0, 0.2, 0.8, 1],
//                             ),
//                           ),
//                         );
//                       },
//                     );
//                   });
//                 })),
//           ),
//           InkWell(
//             onTap: () => controller._nextPage(),
//             child: CircleAvatar(
//               backgroundColor: Color(0xffDF6951),
//               radius: 30,
//               child: Icon(
//                 Icons.arrow_forward_ios_outlined,
//                 color: Colors.white,
//               ),
//             ),
//           ),