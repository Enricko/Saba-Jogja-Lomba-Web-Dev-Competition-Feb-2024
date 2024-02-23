import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:get/get.dart';

typedef VoidCallbackWithParameter = void Function(String);

class NeumorphicInputField extends StatelessWidget {
  NeumorphicInputField(
      {super.key, required this.prefixIcon, required this.text, required this.onChange});
  final Icon prefixIcon;
  final String text;
  final VoidCallbackWithParameter onChange;
  @override
  Widget build(BuildContext context) {
    return PrimaryContainer(
      child: TextField(
        onChanged: onChange,
        style: const TextStyle(fontSize: 16, color: Colors.black),
        controller: TextEditingController(),
        decoration: InputDecoration(
          prefixIcon: prefixIcon,
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          hintText: text,
          hintStyle: TextStyle(
            fontSize: 14,
            color: Colors.black54,
          ),
        ),
      ),
    );
  }
}

class DescriptionTextField extends StatelessWidget {
  const DescriptionTextField(
      {super.key, required this.text, required this.onChange});
  final String text;
  final VoidCallbackWithParameter onChange;

  @override
  Widget build(BuildContext context) {
    return PrimaryContainer(
      radius: 10,
      child: TextField(
        onChanged: onChange,
        maxLines: 6,
        style: const TextStyle(fontSize: 16, color: Colors.black),
        controller: TextEditingController(),
        decoration: InputDecoration(
            contentPadding: EdgeInsets.only(left: 20, right: 20, bottom: 10, top: 10),
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            hintText: text,
            hintStyle: TextStyle(fontSize: 14, color: Colors.black54,),),
      ),
    );
  }
}

class PrimaryContainer extends StatelessWidget {
  final Widget child;
  final double? radius;
  final Color? color;
  const PrimaryContainer({
    Key? key,
    this.radius,
    this.color,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius ?? 10),
        boxShadow: [
          BoxShadow(
            color: color ?? Color.fromARGB(255, 255, 255, 255),
          ),
          const BoxShadow(
            offset: Offset(2, 2),
            blurRadius: 4,
            spreadRadius: 0,
            color: Colors.white,
            inset: true,
          ),
        ],
      ),
      child: child,
    );
  }
}
