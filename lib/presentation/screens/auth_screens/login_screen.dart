import 'package:clean_temp/res/routes/routes_imports.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/controllers_import.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
            onTap: () {
              Get.toNamed(RouteName.profileInfoScreen);
            },
            child: Text(
              'Login Screen',
              style: themeController.currentTheme.textStyle.bodyLarge,
            )),
      ),
    );
  }
}
