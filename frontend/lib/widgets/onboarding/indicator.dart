import 'package:flutter/material.dart';
import 'package:frontend/core/colors.dart';

class DotIndicator extends StatelessWidget {
  final bool isActive;

  const DotIndicator({super.key, required this.isActive});

  @override
  Widget build(BuildContext context) => AnimatedContainer(
        duration: const Duration(
          milliseconds: 300,
        ),
        height: 3,
        width: isActive ? 60 : 20,
        decoration: BoxDecoration(
          color:
              isActive ? CustomColor.secondaryColor : CustomColor.primaryColor,
          borderRadius: BorderRadius.circular(12),
        ),
      );
}
