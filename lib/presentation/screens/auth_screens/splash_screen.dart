import 'dart:async';
import 'package:clean_temp/res/constants/constants_imports.dart';
import 'package:clean_temp/res/utils/utils_imports.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

import '../../../controllers/controllers_import.dart';
import '../../../res/routes/routes_imports.dart';
import '../../widgets/widgets_imports.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      Duration(seconds: 3),
      () {
        Get.toNamed(RouteName.loginScreen);
      },
    );
  }

  final themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: themeController.currentTheme.colors.appMainFirstColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: FlippingLogo(
              imagePath: ImageAssets.appLogo,
              height: 40.h,
              width: 40.w,
            ),
          ),
          LoadingAnimationWidget.fourRotatingDots(
              color: themeController.currentTheme.colors.appMainFirstColor,
              size: 100)
        ],
      ),
    );
  }
}
