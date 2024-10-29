import 'package:flutter/widgets.dart';

// ResponsiveLayout class to handle different screen sizes
class SizeConfig {
  static late MediaQueryData _mediaQueryData;
  static late double screenWidth;
  static late double screenHeight;
  static late double blockSizeHorizontal;
  static late double blockSizeVertical;

  // Device orientation
  static late bool isPortrait;
  static late bool isLandscape;

  // Safe Areas
  static late double safeAreaHorizontal;
  static late double safeAreaVertical;
  static late double safeBlockHorizontal;
  static late double safeBlockVertical;

  // Reference screen size (based on design)
  static const double referenceScreenWidth = 375.0; // iPhone X width
  static const double referenceScreenHeight = 812.0; // iPhone X height

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    isPortrait = _mediaQueryData.orientation == Orientation.portrait;
    isLandscape = _mediaQueryData.orientation == Orientation.landscape;

    // Calculate blocks
    blockSizeHorizontal = screenWidth / 100;
    blockSizeVertical = screenHeight / 100;

    // Calculate safe area blocks
    safeAreaHorizontal =
        _mediaQueryData.padding.left + _mediaQueryData.padding.right;
    safeAreaVertical =
        _mediaQueryData.padding.top + _mediaQueryData.padding.bottom;
    safeBlockHorizontal = (screenWidth - safeAreaHorizontal) / 100;
    safeBlockVertical = (screenHeight - safeAreaVertical) / 100;
  }

  // Get scaled dimension based on screen width
  static double scaleWidth(double dimension) {
    return (dimension / referenceScreenWidth) * screenWidth;
  }

  // Get scaled dimension based on screen height
  static double scaleHeight(double dimension) {
    return (dimension / referenceScreenHeight) * screenHeight;
  }

  // Get font size that scales with width
  static double getScaledFontSize(double fontSize) {
    double scaleFactor = screenWidth / referenceScreenWidth;
    return fontSize * scaleFactor;
  }
}

// Extension methods for more intuitive usage
extension ResponsiveExtension on num {
  // Percentage of screen width
  double get w => SizeConfig.screenWidth * (this / 100);

  // Percentage of screen height
  double get h => SizeConfig.screenHeight * (this / 100);

  // Scaled width dimension
  double get sw => SizeConfig.scaleWidth(this.toDouble());

  // Scaled height dimension
  double get sh => SizeConfig.scaleHeight(this.toDouble());

  // Responsive font size
  double get sp => SizeConfig.getScaledFontSize(this.toDouble());
}

// Responsive widget wrapper
class ResponsiveBuilder extends StatelessWidget {
  final Widget Function(BuildContext context, BoxConstraints constraints,
      Orientation orientation) builder;

  const ResponsiveBuilder({
    Key? key,
    required this.builder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            return builder(context, constraints, orientation);
          },
        );
      },
    );
  }
}
