import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:frontend/core/colors.dart';
import 'package:frontend/model/location_model.dart';
import 'package:frontend/screens/common/states_details.dart';
import 'package:google_fonts/google_fonts.dart';

class StatesBigCard extends StatelessWidget {
  const StatesBigCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: dummyLocationsData.length,
      itemBuilder: (context, index) {
        LocationModel locationModel = dummyLocationsData[index];
        return Container(
          width: 300,
          margin: const EdgeInsets.only(right: 20),
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                    image: NetworkImage(
                      locationModel.countryUrl,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Colors.black.withOpacity(0.6),
                      Colors.black12.withOpacity(0.4),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Recommended",
                      style: GoogleFonts.poppins(
                        color: Colors.white70,
                      ),
                    ),
                    Text(
                      locationModel.countryName,
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '${locationModel.numberOfDestinations} + destinations',
                      style: GoogleFonts.poppins(
                        color: Colors.white70,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const CountriesDetails(),
                            ),
                          );
                        },
                        child: Container(
                          height: 60,
                          width: 100,
                          decoration: BoxDecoration(
                            color: CustomColor.secondaryColor.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Icon(
                            FluentSystemIcons.ic_fluent_arrow_right_filled,
                            color: CustomColor.secondaryColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
