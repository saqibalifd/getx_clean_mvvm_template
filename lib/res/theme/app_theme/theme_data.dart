import 'package:flutter/material.dart';

import '../../constants/assets/font_assets.dart';
import '../../constants/constants_imports.dart';

class ApparenceKitColors {
  final Color primaryColor;
  final Color secondaryColor;
  final Color backgroundColor;
  final Color textColor;
  final Color textGrayColor;
  final Color appMainFirstColor;
  final Color appMainSecondColor;
  final Color yellowColor;

  ApparenceKitColors({
    required this.primaryColor,
    required this.backgroundColor,
    required this.secondaryColor,
    required this.textColor,
    required this.textGrayColor,
    required this.appMainFirstColor,
    required this.appMainSecondColor,
    required this.yellowColor,
  });

  factory ApparenceKitColors.light() {
    return ApparenceKitColors(
      primaryColor: AppColors.whiteColor,
      backgroundColor: AppColors.whiteColor,
      secondaryColor: AppColors.blackColor,
      textColor: AppColors.blackColor,
      textGrayColor: AppColors.grayColor,
      appMainFirstColor: AppColors.vividOrange,
      appMainSecondColor: AppColors.vividSkyBlue,
      yellowColor: AppColors.neonYellowColor,
    );
  }

  factory ApparenceKitColors.dark() {
    return ApparenceKitColors(
      primaryColor: AppColors.blackColor,
      backgroundColor: AppColors.blackColor,
      secondaryColor: AppColors.darkSecondaryColor,
      textColor: AppColors.whiteColor,
      textGrayColor: AppColors.grayColor,
      appMainFirstColor: AppColors.vividOrange,
      appMainSecondColor: AppColors.vividSkyBlue,
      yellowColor: AppColors.neonYellowColor,
    );
  }
}

class ApparenceKitTextStyle {
  final TextStyle headingLarge;
  final TextStyle headingMedium;
  final TextStyle bodyLarge;
  final TextStyle bodyMedium;
  final TextStyle lebelLarge;
  ApparenceKitTextStyle({
    required this.headingLarge,
    required this.headingMedium,
    required this.bodyLarge,
    required this.bodyMedium,
    required this.lebelLarge,
  });

  factory ApparenceKitTextStyle.fromColors(ApparenceKitColors colors) {
    return ApparenceKitTextStyle(
      headingLarge: TextStyle(
        fontSize: 32.0,
        fontFamily: AppFonts.poppins,
        // fontWeight: FontWeight.bold,
        color: colors.secondaryColor,
      ),
      headingMedium: TextStyle(
        fontSize: 24.0,
        fontFamily: AppFonts.poppins,
        // fontWeight: FontWeight.bold,
        color: colors.secondaryColor,
      ),
      bodyLarge: TextStyle(
        fontSize: 16.0,
        fontFamily: AppFonts.inter,
        // fontWeight: FontWeight.bold,
        color: colors.secondaryColor,
      ),
      bodyMedium: TextStyle(
        fontSize: 14.0,
        fontFamily: AppFonts.inter,
        // fontWeight: FontWeight.bold,
        color: colors.secondaryColor,
      ),
      lebelLarge: TextStyle(
        fontSize: 20.0,
        fontFamily: AppFonts.montserrat,
        // fontWeight: FontWeight.bold,
        color: colors.secondaryColor,
      ),
    );
  }
}

class ApparenceKitThemeDataFactory {
  ApparenceKitThemeData build({
    required ApparenceKitColors colors,
    required ApparenceKitTextStyle textStyle,
  }) {
    return ApparenceKitThemeData(
        materialTheme: ThemeData(
          primaryColor: colors.primaryColor,
          scaffoldBackgroundColor: colors.backgroundColor,
          appBarTheme: AppBarTheme(
            color: colors.primaryColor,
            elevation: 0,
          ),
          buttonTheme: ButtonThemeData(
            buttonColor: colors.primaryColor,
            textTheme: ButtonTextTheme.primary,
          ),
          // textTheme: textStyle,

          colorScheme: ColorScheme.fromSeed(
            seedColor: colors.primaryColor,
            primary: colors.primaryColor,
          ),
        ),
        colors: colors,
        textStyle: textStyle);
  }
}

class ApparenceKitThemeData {
  final ThemeData materialTheme;
  final ApparenceKitColors colors;
  final ApparenceKitTextStyle textStyle;

  ApparenceKitThemeData({
    required this.materialTheme,
    required this.colors,
    required this.textStyle,
  });
}
