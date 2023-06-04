import 'package:flutter/material.dart';
import 'package:frontend/core/colors.dart';

class SaveTab extends StatefulWidget {
  const SaveTab({super.key});

  @override
  State<SaveTab> createState() => _SaveTabState();
}

class _SaveTabState extends State<SaveTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.backgroundBg.withOpacity(0.5),
      body: const Text("Save"),
    );
  }
}
