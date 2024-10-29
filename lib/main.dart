import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'controllers/controllers_import.dart';
import 'res/routes/routes_imports.dart';
import 'res/utils/utils_imports.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await GetStorage.init();
  Get.put(ThemeController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    final themeController = Get.put(ThemeController());
    SizeConfig().init(context);

    return GetBuilder<ThemeController>(
      builder: (controller) {
        return GetMaterialApp(
          key: navigatorKey,
          debugShowCheckedModeBanner: false,
          title: 'ZOIBUCKS',
          theme: themeController.currentTheme.materialTheme,
          darkTheme: themeController.currentTheme.materialTheme,
          getPages: AppRoutes.appRoutes(),
        );
      },
    );
  }
}
