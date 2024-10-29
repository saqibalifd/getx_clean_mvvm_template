import 'package:animated_snack_bar/animated_snack_bar.dart';
import 'package:flutter/material.dart';

void showSnackBar(
  BuildContext context, {
  required String message,
  AnimatedSnackBarType type = AnimatedSnackBarType.success,
  int duration = 4,
}) {
  AnimatedSnackBar.material(
    message,
    type: type,
    duration: Duration(seconds: duration),
    snackBarStrategy: RemoveSnackBarStrategy(),
  ).show(context);
}
