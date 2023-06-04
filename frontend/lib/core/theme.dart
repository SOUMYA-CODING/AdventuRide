import 'package:flutter/material.dart';
import 'package:frontend/core/colors.dart';

final ThemeData customTheme = ThemeData(
  scaffoldBackgroundColor: CustomColor.secondaryColor.withOpacity(0.5),
  bottomAppBarTheme: BottomAppBarTheme(
    color: CustomColor.secondaryColor.withOpacity(0.5),
  ),
);
