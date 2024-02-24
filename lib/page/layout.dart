import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/navbar.dart';
import 'section/navbar.dart';

class Layout extends StatelessWidget {
  Layout({super.key, required this.child});
  final Widget child;
  final controllerNavbar = Get.find<NavbarController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(120),
        child: Navbar(),
      ),
      body: SingleChildScrollView(
        controller: controllerNavbar.pageScrollController,
        padding: EdgeInsets.zero,
        child: Container(color: Color(0xffFDF6E0), child: child),
      ),
    );
  }
}
