import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:university_helper/app/routes/app_pages.dart';

class SplashScreenController extends GetxController
    with SingleGetTickerProviderMixin {
  late AnimationController animationController;
  late AnimationController textAnimationController;

  @override
  void onInit() async {
    super.onInit();

    animationController = AnimationController(
      duration: Duration(milliseconds: 2500),
      vsync: this,
    );
    textAnimationController = AnimationController(
      duration: Duration(milliseconds: 500),
      vsync: this,
    );
    animationController.value.obs;

    animationController.forward();

    textAnimationController.forward();

    animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        animationController.reverse();
      } else if (status == AnimationStatus.dismissed) {
        animationController.forward();
      }
    });
    Timer(
      Duration(milliseconds: 5500),
      () => Get.offNamed(Routes.MAIN_SCREEN),
    );
  }

  @override
  void onClose() async {
    animationController.dispose();
    textAnimationController.dispose();
    super.onClose();
  }
}
