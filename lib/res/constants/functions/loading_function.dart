import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

import '../../../controllers/controllers_import.dart';

class LoadingFunction {
  // Getting the theme controller
  static final themeController = Get.find<ThemeController>();

  // Static method for rotating dots animation
  static Widget mainButtonLoading() {
    return LoadingAnimationWidget.fourRotatingDots(
      color: themeController.currentTheme.colors.appMainFirstColor,
      size: 40.h,
    );
  }

  // Static method for twinkle animation
  static Widget simpleLoading() {
    return LoadingAnimationWidget.fourRotatingDots(
      color: themeController.currentTheme.colors.appMainFirstColor,
      size: 100.h,
    );
  }
}
