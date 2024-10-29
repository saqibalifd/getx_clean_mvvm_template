import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../res/theme/theme_imports.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class ThemeController extends GetxController {
  static const THEME_KEY = 'isDarkMode';
  final _storage = GetStorage();
  final _isDarkMode = false.obs;
  late Rx<ApparenceKitThemeData> _currentTheme;

  bool get isDarkMode => _isDarkMode.value;
  ApparenceKitThemeData get currentTheme => _currentTheme.value;

  @override
  void onInit() {
    super.onInit();
    loadThemeFromStorage();
  }

  void loadThemeFromStorage() {
    final savedTheme = _storage.read(THEME_KEY);
    if (savedTheme != null) {
      _isDarkMode.value = savedTheme;
    }
    _initializeTheme();
  }

  void _initializeTheme() {
    final colors = _isDarkMode.value
        ? ApparenceKitColors.dark()
        : ApparenceKitColors.light();
    final textStyle = ApparenceKitTextStyle.fromColors(colors);
    final themeData = ApparenceKitThemeDataFactory().build(
      colors: colors,
      textStyle: textStyle,
    );
    _currentTheme = themeData.obs;
    // Update the global theme
    Get.changeTheme(_currentTheme.value.materialTheme);
  }

  void toggleTheme() {
    _isDarkMode.value = !_isDarkMode.value;
    _storage.write(THEME_KEY, _isDarkMode.value);

    final colors = _isDarkMode.value
        ? ApparenceKitColors.dark()
        : ApparenceKitColors.light();
    final textStyle = ApparenceKitTextStyle.fromColors(colors);
    final themeData = ApparenceKitThemeDataFactory().build(
      colors: colors,
      textStyle: textStyle,
    );
    _currentTheme.value = themeData;
    // Update the global theme
    Get.changeTheme(_currentTheme.value.materialTheme);
    // Force UI update
    update();
  }
}
