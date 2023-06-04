import 'package:flutter/material.dart';
import 'package:frontend/core/colors.dart';
import 'package:frontend/widgets/home_tab/header_section.dart';
import 'package:frontend/widgets/home_tab/search_section.dart';
import 'package:frontend/widgets/home_tab/tab_section.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this, initialIndex: 2);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.backgroundBg.withOpacity(0.5),
      body: Column(
        children: [
          const HomeHeaderSection(
            username: "Vin Diesel",
            profileUrl:
                "https://media.cnn.com/api/v1/images/stellar/prod/200927125801-vin-diesel-file.jpg?q=x_3,y_60,h_1684,w_2993,c_crop/h_720,w_1280/f_webp",
          ),
          const SizedBox(
            height: 10,
          ),
          const HomeSearchSection(),
          const Padding(
            padding: EdgeInsets.only(left: 30),
            child: Divider(
              color: CustomColor.primaryColor,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          HomeTabSection(tabController: _tabController),
        ],
      ),
    );
  }
}
