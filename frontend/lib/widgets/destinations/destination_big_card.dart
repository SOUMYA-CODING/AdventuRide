import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:frontend/core/colors.dart';
import 'package:frontend/model/location_model.dart';
import 'package:frontend/widgets/destinations/destination_details.dart';
import 'package:google_fonts/google_fonts.dart';

class DestinationBigCard extends StatelessWidget {
  const DestinationBigCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: dymmyLocationsData.length,
      itemBuilder: (context, index) {
        LocationModel locationModel = dymmyLocationsData[index];
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
                      locationModel.placeUrl,
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
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 100,
                          height: 50,
                          decoration: BoxDecoration(
                            color: CustomColor.secondaryColor.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                FluentSystemIcons.ic_fluent_star_filled,
                                color: CustomColor.secondaryColor,
                              ),
                              Text(
                                locationModel.rating.toString(),
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                        ),
                        locationModel.saved
                            ? const Icon(
                                FluentSystemIcons.ic_fluent_bookmark_filled,
                                color: CustomColor.secondaryColor,
                              )
                            : const Icon(
                                FluentSystemIcons.ic_fluent_bookmark_regular,
                                color: CustomColor.secondaryColor,
                              )
                      ],
                    ),
                    const Spacer(),
                    Text(
                      "Recommended",
                      style: GoogleFonts.poppins(
                        color: Colors.white70,
                      ),
                    ),
                    Text(
                      locationModel.placeName,
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '${locationModel.locationName}, ${locationModel.countryName}',
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
                              builder: (context) => const DestinationDetails(),
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
