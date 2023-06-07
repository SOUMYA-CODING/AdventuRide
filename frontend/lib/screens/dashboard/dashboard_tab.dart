import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:frontend/core/colors.dart';
import 'package:frontend/screens/dashboard/tabs/explore.dart';
import 'package:frontend/screens/dashboard/tabs/home.dart';
import 'package:frontend/screens/dashboard/tabs/profile.dart';
import 'package:frontend/screens/dashboard/tabs/save.dart';
import 'package:frontend/widgets/bottom_nav/bottom_nav_tem.dart';

class DashboardTab extends StatefulWidget {
  const DashboardTab({super.key});

  @override
  State<DashboardTab> createState() => _DashboardTabState();
}

class _DashboardTabState extends State<DashboardTab> {
  List tabScreens = [
    const HomeTab(),
    const ExploreTab(),
    const SaveTab(),
    const ProfileTab(),
  ];

  int currentIndex = 0;

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: tabScreens[currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: CustomColor.backgroundBg.withOpacity(0.5),
        elevation: 0,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: CustomColor.primaryColor,
        unselectedItemColor: Colors.grey,
        iconSize: 25,
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: onTap,
        items: [
          bottomNavigationBarItem(
            const Icon(
              FluentSystemIcons.ic_fluent_home_regular,
            ),
            "Home",
          ),
          bottomNavigationBarItem(
            const Icon(
              FluentSystemIcons.ic_fluent_map_regular,
            ),
            "Explore",
          ),
          bottomNavigationBarItem(
            const Icon(
              FluentSystemIcons.ic_fluent_bookmark_regular,
            ),
            "Save",
          ),
          bottomNavigationBarItem(
            const Icon(
              FluentSystemIcons.ic_fluent_person_regular,
            ),
            "Profile",
          ),
        ],
      ),
    );
  }
}
