import 'package:flutter/material.dart';
import 'package:frontend/core/colors.dart';

class ExploreTab extends StatefulWidget {
  const ExploreTab({super.key});

  @override
  State<ExploreTab> createState() => _ExploreTabState();
}

class _ExploreTabState extends State<ExploreTab> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
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
          // ignore: avoid_unnecessary_containers
          Container(
            child: Align(
              alignment: Alignment.centerLeft,
              child: TabBar(
                isScrollable: true,
                labelColor: CustomColor.primaryColor,
                unselectedLabelColor: Colors.grey,
                controller: _tabController,
                tabs: const [
                  Tab(
                    text: "Places",
                  ),
                  Tab(
                    text: "Places",
                  ),
                  Tab(
                    text: "Places",
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: double.maxFinite,
            height: 300,
            child: TabBarView(
              controller: _tabController,
              children: const [
                Text("1"),
                Text("2"),
                Text("3"),
              ],
            ),
          )
        ],
      ),
    );
  }
}