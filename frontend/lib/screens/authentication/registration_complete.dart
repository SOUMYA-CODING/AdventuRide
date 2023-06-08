import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:frontend/core/colors.dart';
import 'package:frontend/main.dart';
import 'package:google_fonts/google_fonts.dart';

class RegistrationCompleteScreen extends StatefulWidget {
  const RegistrationCompleteScreen({super.key});

  @override
  State<RegistrationCompleteScreen> createState() =>
      _RegistrationCompleteScreenState();
}

class _RegistrationCompleteScreenState
    extends State<RegistrationCompleteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            color: CustomColor.backgroundBg,
          ),
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child:
                      const Icon(FluentSystemIcons.ic_fluent_arrow_left_filled),
                ),
                const Spacer(),
                Text(
                  "Registration\nComplete!",
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "You have successfully created\nyour account",
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  height: 100,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: 180,
                    height: 180,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: CustomColor.primaryColor,
                        width: 2,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: CustomColor.secondaryColor.withOpacity(0.3),
                          spreadRadius: 10,
                          blurRadius: 10,
                          offset: const Offset(0, 2),
                        ),
                        BoxShadow(
                          color: CustomColor.secondaryColor.withOpacity(0.5),
                          spreadRadius: 20,
                          blurRadius: 20,
                          offset: const Offset(0, 4),
                        ),
                        BoxShadow(
                          color: CustomColor.secondaryColor.withOpacity(0.8),
                          spreadRadius: 30,
                          blurRadius: 30,
                          offset: const Offset(0, 6),
                        ),
                      ],
                      image: const DecorationImage(
                        image: NetworkImage(
                          'https://media.cnn.com/api/v1/images/stellar/prod/200927125801-vin-diesel-file.jpg?q=x_3,y_60,h_1684,w_2993,c_crop/h_720,w_1280/f_webp',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Soumya Prakash",
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 130,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        CustomColor.secondaryColor,
                      ),
                      elevation: MaterialStateProperty.all(0),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamed(
                        RoutePath.dashboardTabScreenRoute,
                      );
                    },
                    child: Text(
                      "Explore India",
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
