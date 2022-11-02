import 'package:flutter/material.dart';

class CustomButtons {
  static ElevatedButton customElevatedButton(
      {EdgeInsetsGeometry? padding,
      Color? color,
      Widget? child,
      void Function()? onPressed,
      OutlinedBorder? shape,
      Key? key,
      double? elevation}) {
    return ElevatedButton(
      key: key,
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          elevation: elevation, padding: padding, primary: color, shape: shape),
      child: child,
    );
  }
}
