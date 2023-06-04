import 'package:flutter/material.dart';
import 'package:frontend/core/colors.dart';

BottomNavigationBarItem bottomNavigationBarItem(Icon icon, String title) {
  return BottomNavigationBarItem(
    icon: Container(
      padding: const EdgeInsets.all(15),
      child: icon,
    ),
    label: title,
    activeIcon: Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: CustomColor.secondaryColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: icon,
    ),
  );
}
