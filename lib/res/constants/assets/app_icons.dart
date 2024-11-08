import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../controllers/controllers_import.dart';

class AppIcons {
//arrow next
  static Icon get arrowNext {
    final themeController = Get.find<ThemeController>();
    return Icon(
      Icons.arrow_forward,
      size: 25.h,
      color: themeController.currentTheme.colors.secondaryColor,
    );
  }
}
