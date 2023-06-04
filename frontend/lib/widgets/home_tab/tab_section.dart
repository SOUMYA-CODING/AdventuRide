import 'package:flutter/material.dart';
import 'package:frontend/core/colors.dart';
import 'package:frontend/widgets/cities/cities_big_card.dart';
import 'package:frontend/widgets/countries/countries_big_card.dart';
import 'package:frontend/widgets/destinations/destination_big_card.dart';

class HomeTabSection extends StatelessWidget {
  const HomeTabSection({
    super.key,
    required TabController tabController,
  }) : _tabController = tabController;

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RotatedBox(
            quarterTurns: 3,
            child: Flexible(
              child: Align(
                alignment: Alignment.topRight,
                child: TabBar(
                  indicator: const BoxDecoration(color: Colors.transparent),
                  isScrollable: true,
                  labelPadding: const EdgeInsets.only(
                    left: 20,
                    right: 30,
                    top: 5,
                  ),
                  labelColor: CustomColor.primaryColor,
                  unselectedLabelColor: Colors.grey,
                  controller: _tabController,
                  tabs: const [
                    Tab(
                      text: "Cities",
                    ),
                    Tab(
                      text: "Countries",
                    ),
                    Tab(
                      text: "Destinations",
                    ),
                  ],
                ),
              ),
            ),
          ),
          Flexible(
            child: Column(
              children: [
                Expanded(
                  child: TabBarView(
                    controller: _tabController,
                    children: const [
                      CitiesBigCard(),
                      CountriesBigCard(),
                      DestinationBigCard(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
