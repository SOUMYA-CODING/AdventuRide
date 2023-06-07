import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:frontend/core/colors.dart';
import 'package:frontend/widgets/destinations/destination_big_card.dart';
import 'package:google_fonts/google_fonts.dart';

class CitiesDetails extends StatefulWidget {
  const CitiesDetails({super.key});

  @override
  State<CitiesDetails> createState() => _CitiesDetailsState();
}

class _CitiesDetailsState extends State<CitiesDetails> {
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
                          'https://images.unsplash.com/photo-1537996194471-e657df975ab4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=438&q=80'),
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
                    height: 300,
                  ),
                  Text(
                    "Top Recommended City",
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 11,
                    ),
                  ),
                  Text(
                    "Bali",
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 45,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Indonesia | 100+ destinations",
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 11,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Explore beauty\ndestination in Bali",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      color: Colors.grey,
                      fontWeight: FontWeight.w600,
                      fontSize: 11,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Icon(
                    FluentSystemIcons.ic_fluent_arrow_down_filled,
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: SizedBox(
                      height: 600,
                      child: DestinationBigCard(),
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
