import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/navbar.dart';
import '../controller/theme.dart';
import 'section/navbar.dart';

class Layout extends StatelessWidget {
  Layout({super.key, required this.child,this.isShow = true});
  final Widget child;
  final bool isShow;
  final controllerNavbar = Get.find<NavbarController>();
  final controllerTheme = Get.find<ThemeController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(120),
        child: Navbar(
          isShow: isShow,
        ),
      ),
      body: SingleChildScrollView(
        controller: controllerNavbar.pageScrollController,
        padding: EdgeInsets.zero,
        child: Obx(
          () => Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: controllerTheme.isDarkMode.value ? Color(0xffFDF6E0) : Color(0xff1E1E1E),
              image: DecorationImage(
                image: AssetImage("assets/pattern.png"),
                fit: BoxFit.cover,
                filterQuality: FilterQuality.high
              ),
            ),
            child: child,
          ),
        ),
      ),
    );
  }
}
