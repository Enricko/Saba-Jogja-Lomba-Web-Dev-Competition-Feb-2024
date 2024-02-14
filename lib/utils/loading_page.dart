
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class loadingPage extends StatelessWidget {
  const loadingPage({
    super.key,
    required this.controller,
  });

  final LoadingPageAnimation controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          AnimatedBuilder(
            animation: controller._controllerZooming,
            builder: (context, child) {
              return Positioned(
              left: 0,
              right: 0,
              bottom: -MediaQuery.of(context).size.height * controller._animationBottomAppear.value,
              child: Transform.scale(
                scale: controller._animationZoom.value,
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  color: Colors.transparent, // Add your content here
                  child: Center(
                    child: Text(
                      'Content Appearing and Zooming from Bottom',
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            );
            },
          ),
          AnimatedBuilder(
            animation: controller._controllerGate,
            builder: (context, child) {
              return Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    bottom: 0,
                    width: MediaQuery.of(context).size.width / 2 * controller._animationGate.value,
                    child: Container(
                      color: Colors.blue,
                      child: AnimatedBuilder(
                        animation: controller._controllerGunungan,
                        builder: (context, child) {
                          return Stack(
                            children: [
                              Positioned(
                                bottom: -75,
                                left: -25,
                                child: Transform.rotate(
                                  angle: controller._animationGununganLeft.value *
                                      (3.14159 / 180), // Convert degrees to radians
                                  alignment: Alignment.bottomCenter, // Rotate around bottom
                                  child: Container(
                                    child: Image.asset(
                                      "assets/gunungan_kuning.png",
                                      height: MediaQuery.of(context).size.height * 1.2,
                                      scale: 0.1,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  ),
                  // Right gate
                  Positioned(
                    right: 0,
                    top: 0,
                    bottom: 0,
                    width: MediaQuery.of(context).size.width / 2 * controller._animationGate.value,
                    child: Container(
                      color: Colors.blue,
                      child: AnimatedBuilder(
                        animation: controller._controllerGunungan,
                        builder: (context, child) {
                          return Stack(
                            children: [
                              Positioned(
                                bottom: -75,
                                right: -25,
                                child: Transform.rotate(
                                  angle: controller._animationGununganRight.value *
                                      (3.14159 / 180), // Convert degrees to radians
                                  alignment: Alignment.bottomCenter, // Rotate around bottom
                                  child: Container(
                                    child: Image.asset(
                                      "assets/gunungan_kuning.png",
                                      height: MediaQuery.of(context).size.height * 1.2,
                                      scale: 0.1,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}

class LoadingPageAnimation extends GetxController with SingleGetTickerProviderMixin {
  late AnimationController _controllerGunungan;
  late AnimationController _controllerGate;
  late AnimationController _controllerZooming;

  late Animation<double> _animationGununganLeft;
  late Animation<double> _animationGununganRight;

  late Animation<double> _animationGate;

  late Animation<double> _animationZoom;
  late Animation<double> _animationBottomAppear;

  @override
  void onInit() {
    super.onInit();

    _controllerGunungan = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );

    _controllerGate = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );

    _controllerZooming = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 750),
    );

    _animationGununganLeft = Tween<double>(
      begin: 45,
      end: -45,
    ).animate(_controllerGunungan);

    _animationGununganRight = Tween<double>(
      begin: -45,
      end: 45,
    ).animate(_controllerGunungan);

    _animationGate = Tween<double>(
      begin: 1.0,
      end: 0.0,
    ).animate(_controllerGate);

    _animationZoom = Tween<double>(
      begin: 1.0,
      end: 2.0,
    ).animate(
      CurvedAnimation(
        parent: _controllerZooming,
        curve: Interval(0.75, 1.0, curve: Curves.bounceOut),
      ),
    );

    _animationBottomAppear = Tween<double>(
      begin: 1.0,
      end: 0.0,
    ).animate(
      CurvedAnimation(
        parent: _controllerZooming,
        curve: Interval(0.5, 0.75, curve: Curves.easeInOut),
      ),
    );

    _controllerGunungan.forward(from: 0.0).whenComplete(() {
      _controllerGate.forward(from: 0.0).whenComplete(() {
        _controllerZooming.forward(from: 0.0);
      });
    });
  }

  @override
  void dispose() {
    _controllerGunungan.dispose();
    _controllerGate.dispose();
    super.dispose();
  }
}
