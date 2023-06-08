import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:frontend/core/colors.dart';
import 'package:frontend/main.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountSetupScreen extends StatefulWidget {
  const AccountSetupScreen({super.key});

  @override
  State<AccountSetupScreen> createState() => _AccountSetupScreenState();
}

class _AccountSetupScreenState extends State<AccountSetupScreen> {
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
                  "Account\nSetup",
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
                  "Finish your account setup by uploading profile picture and set your username",
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  height: 35,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Stack(
                    children: [
                      Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(150),
                          border: Border.all(
                            color: CustomColor.secondaryColor,
                          ),
                        ),
                        child: const Icon(
                          FluentSystemIcons.ic_fluent_person_regular,
                          color: CustomColor.secondaryColor,
                          size: 45,
                        ),
                      ),
                      Positioned(
                        right: 0,
                        bottom: 0,
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: CustomColor.primaryColor,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: CustomColor.secondaryColor,
                            ),
                          ),
                          child: const Icon(
                            FluentSystemIcons.ic_fluent_upload_filled,
                            color: CustomColor.secondaryColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 35,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    prefixIcon: Icon(
                      FluentSystemIcons.ic_fluent_person_filled,
                      color: CustomColor.secondaryColor,
                    ),
                    hintText: 'Username',
                  ),
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return 'Please enter username';
                    }
                    return null;
                  },
                  onChanged: (value) {
                    setState(() {});
                  },
                ),
                const Spacer(),
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
                        RoutePath.registrationCompleteRoute,
                      );
                    },
                    child: Text(
                      "Create Account",
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
