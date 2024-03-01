import 'package:flutter/material.dart';
import 'package:flutter_advanced_switch/flutter_advanced_switch.dart';
import 'package:get/get.dart';

import '../controller/navbar.dart';

class CustomAdvanceSwitch extends StatefulWidget {
  final double radius;
  final double thumbRadius;
  final Widget? activeChild;
  final Widget? inactiveChild;
  final Color? activeColor;
  final Color? inactiveColor;
  final ValueNotifier<bool>? controller;

  const CustomAdvanceSwitch({
    super.key,
    this.radius = 40,
    this.thumbRadius = 100,
    this.activeChild,
    this.inactiveChild,
    this.activeColor,
    this.inactiveColor,
    required this.controller,
  });

  @override
  State<CustomAdvanceSwitch> createState() => _CustomAdvanceSwitchState();
}

class _CustomAdvanceSwitchState extends State<CustomAdvanceSwitch> {
  @override
  Widget build(BuildContext context) {
    return AdvancedSwitch(
      activeColor: widget.activeColor ?? const Color(0xFF00BAAB),
      inactiveColor: widget.inactiveColor ?? const Color(0xFF292929),
      activeChild: widget.activeChild ?? const Text('ON'),
      inactiveChild: widget.inactiveChild ?? const Text('OFF'),
      borderRadius: BorderRadius.all(Radius.circular(widget.radius)),
      width: 80,
      height: 36,
      thumb: Container(
        margin: const EdgeInsets.all(5),
        height: 24,
        width: 24,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Colors.black,
              offset: Offset(2, 2),
              blurRadius: 4,
              spreadRadius: 0,
            ),
          ],
          borderRadius: BorderRadius.circular(
            widget.thumbRadius,
          ),
        ),
      ),
      controller: widget.controller,
    );
  }
}

class Button {
  final controllerNavbar = Get.find<NavbarController>();
  Widget NavbarButton({
    required BuildContext context,
    required VoidCallback onTap,
    required String text,
    required bool isShow,
  }) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: context.width * .1 / 4.5),
      child: GestureDetector(
        onTap: onTap,
        child: MouseRegion(
          cursor: SystemMouseCursors.click,
          child: AnimatedContainer(
            duration: const Duration(seconds: 1),
            child: Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    text.toUpperCase(),
                    style: context.theme.textTheme.titleMedium!.copyWith(
                      color: controllerNavbar.scrollBool() && isShow ? Colors.black : null,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DropdownButtonExample extends StatefulWidget {
  const DropdownButtonExample(
      {super.key, required this.options, required this.title, required this.isShow});
  final List<String> options;
  final String title;
  final bool isShow;

  @override
  State<DropdownButtonExample> createState() => _DropdownButtonExampleState();
}

class _DropdownButtonExampleState extends State<DropdownButtonExample> {
  final controllerNavbar = Get.find<NavbarController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 135,
      margin: EdgeInsets.symmetric(horizontal: context.width * .1 / 7),
      color: Colors.transparent,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: DropdownButton<String>(
        focusColor: Colors.transparent,
        onChanged: (String? value) {
          Get.offNamed("/${value!}");
          controllerNavbar.scrollOffset.value = 0.0;
          // dropdownValue = value!;
        },
        hint: Text(
          widget.title.toUpperCase(),
          style: context.theme.textTheme.titleMedium!.copyWith(
            color: controllerNavbar.scrollBool() && widget.isShow ? Colors.black : null,
          ),
        ),
        underline: const SizedBox(),
        isExpanded: true,
        style: context.theme.textTheme.titleMedium,
        dropdownColor: context.theme.scaffoldBackgroundColor,
        icon: Icon(
          Icons.keyboard_arrow_down,
          color: controllerNavbar.scrollBool() && widget.isShow
              ? Colors.black
              : (context.isDarkMode ? Colors.white : Colors.black),
        ),
        items: widget.options.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value.tr.toUpperCase()),
          );
        }).toList(),
      ),
    );
  }
}
