import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:frontend/core/colors.dart';
import 'package:frontend/widgets/cities/cities_big_card.dart';
import 'package:frontend/widgets/destinations/destination_big_card.dart';
import 'package:google_fonts/google_fonts.dart';

class CountriesDetails extends StatefulWidget {
  const CountriesDetails({super.key});

  @override
  State<CountriesDetails> createState() => _CountriesDetailsState();
}

class _CountriesDetailsState extends State<CountriesDetails>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this, initialIndex: 0);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                double screenHeight = constraints.maxHeight;
                double targetHeight = screenHeight * 0.8;

                return Container(
                  width: double.infinity,
                  height: targetHeight,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://images.unsplash.com/photo-1523810804307-760585ed63cd?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=437&q=80'),
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    CustomColor.backgroundBg,
                    CustomColor.backgroundBg.withOpacity(0.3),
                  ],
                  stops: const [0.3, 0.9],
                  tileMode: TileMode.repeated,
                ),
              ),
            ),
            Positioned(
              left: 20,
              top: 20,
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  FluentSystemIcons.ic_fluent_arrow_left_filled,
                  color: CustomColor.primaryColor,
                ),
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 150,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Stack(
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: CustomColor.primaryColor.withOpacity(0.7),
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                        Positioned(
                          left: 15,
                          right: 15,
                          top: 15,
                          bottom: 15,
                          child: Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              color: CustomColor.primaryColor.withOpacity(0.7),
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(
                                width: 1,
                                color: CustomColor.secondaryColor,
                              ),
                            ),
                            child: const Center(
                              child: Icon(
                                FluentSystemIcons.ic_fluent_play_filled,
                                color: CustomColor.secondaryColor,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 45,
                  ),
                  Text(
                    "Top Recommended Country",
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 11,
                    ),
                  ),
                  Text(
                    "Indonesia",
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 45,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "100+ destinations",
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 11,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Text(
                      "Indonesia is a diverse and vibrant country located in Southeast Asia. Here is some information about Indonesia. The major islands of Indonesia include Java, Sumatra, Borneo (shared with Malaysia and Brunei), Sulawesi, and Bali.",
                      textAlign: TextAlign.center,
                      maxLines: 5,
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 11,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: TabBar(
                        indicator:
                            const BoxDecoration(color: Colors.transparent),
                        isScrollable: true,
                        labelColor: CustomColor.primaryColor,
                        unselectedLabelColor: Colors.grey,
                        controller: _tabController,
                        labelPadding: const EdgeInsets.only(left: 0, right: 20),
                        tabs: const [
                          Tab(
                            text: "Cities",
                          ),
                          Tab(
                            text: "Destination",
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: SizedBox(
                      height: 600,
                      child: TabBarView(
                        controller: _tabController,
                        children: const [
                          CitiesBigCard(),
                          DestinationBigCard(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
