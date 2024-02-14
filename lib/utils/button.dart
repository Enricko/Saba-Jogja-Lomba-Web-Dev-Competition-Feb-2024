import 'package:flutter/material.dart';
import 'package:flutter_advanced_switch/flutter_advanced_switch.dart';

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
          borderRadius: BorderRadius.circular(
            widget.thumbRadius,
          ),
        ),
      ),
      controller: widget.controller,
    );
  }
}
