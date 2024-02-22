import 'package:flutter/material.dart';

class Mountain extends StatelessWidget {
  const Mountain({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 300,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          image: AssetImage("assets/mountain.png"),
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
    );
  }
}
