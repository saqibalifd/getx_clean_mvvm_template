import 'dart:async';
import 'package:clean_temp/res/constants/constants_imports.dart';
import 'package:clean_temp/res/constants/functions/loading_function.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

import '../../../controllers/controllers_import.dart';
import '../../../res/routes/routes_imports.dart';
import '../../widgets/widgets_imports.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () {
        Get.toNamed(RouteName.loginScreen);
      },
    );
  }

  final themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: FlippingLogo(
              imagePath: ImageAssets.appLogo,
              height: 100.h,
              width: 100.w,
            ),
          ),
          SizedBox(
            height: 50.h,
          ),
          LoadingFunction.simpleLoading()
        ],
      ),
    );
  }
}
