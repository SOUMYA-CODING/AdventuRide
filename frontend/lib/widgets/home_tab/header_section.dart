import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:frontend/core/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeHeaderSection extends StatelessWidget {
  final String username;
  final String profileUrl;

  const HomeHeaderSection({
    super.key,
    required this.username,
    required this.profileUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 20,
        right: 20,
        left: 20,
        bottom: 5,
      ),
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: CustomColor.primaryColor,
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: NetworkImage(profileUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Welcome",
                style: GoogleFonts.kanit(
                  color: Colors.black,
                  fontSize: 11,
                  fontWeight: FontWeight.normal,
                ),
              ),
              Text(
                username,
                style: GoogleFonts.kanit(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              FluentSystemIcons.ic_fluent_alert_filled,
            ),
          ),
        ],
      ),
    );
  }
}
