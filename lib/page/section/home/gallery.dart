import 'package:flutter/material.dart';

class Gallery extends StatelessWidget {
  Gallery({super.key});

  List<String> gallery = [
    "assets/image1.png",
    "assets/image2.png",
    "assets/image3.png",
    "assets/image4.png",
    "assets/image5.png",
    "assets/image6.png",
    "assets/image7.png",
    "assets/image8.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 50),
      color: Color(0xffFDF6E0),
      child: Row(
        children: gallery.map((image) {
          return Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                image,
                filterQuality: FilterQuality.high,
                fit: BoxFit.cover,
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
