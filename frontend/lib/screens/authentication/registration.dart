import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:frontend/core/colors.dart';
import 'package:frontend/main.dart';
import 'package:google_fonts/google_fonts.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Stack(
          children: [
            LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                double screenHeight = constraints.maxHeight;
                double targetHeight = screenHeight * 0.5;

                return Container(
                  width: double.infinity,
                  height: targetHeight,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://images.unsplash.com/photo-1574616440943-a1fca0fa3216?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=435&q=80'),
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
                  stops: const [0.6, 0.9],
                  tileMode: TileMode.repeated,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(
                        FluentSystemIcons.ic_fluent_arrow_left_filled),
                  ),
                  const Spacer(),
                  Text(
                    "Registration",
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
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
                      hintText: 'Full Name',
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
                  const SizedBox(
                    height: 30,
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
                        FluentSystemIcons.ic_fluent_mail_filled,
                        color: CustomColor.secondaryColor,
                      ),
                      hintText: 'Email ID',
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
                  const SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      prefixIcon: Icon(
                        FluentSystemIcons.ic_fluent_lock_filled,
                        color: CustomColor.secondaryColor,
                      ),
                      hintText: 'Password',
                    ),
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'Please enter your password';
                      }
                      return null;
                    },
                    onChanged: (value) {
                      setState(() {});
                    },
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      prefixIcon: Icon(
                        FluentSystemIcons.ic_fluent_lock_filled,
                        color: CustomColor.secondaryColor,
                      ),
                      hintText: 'Confirm Password',
                    ),
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'Please enter your password';
                      }
                      return null;
                    },
                    onChanged: (value) {
                      setState(() {});
                    },
                  ),
                  const SizedBox(
                    height: 20,
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
                          RoutePath.otpScreenRoute,
                        );
                      },
                      child: Text(
                        "Register",
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton.icon(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          Colors.transparent,
                        ),
                        elevation: MaterialStateProperty.all(0),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              3.0,
                            ), // Adjust the value as per your preference
                            side: const BorderSide(
                              color: Colors.black,
                              width: 1.0,
                            ), // Border color and width
                          ),
                        ),
                      ),
                      onPressed: () {},
                      icon: const Icon(
                        Icons.facebook,
                        color: Colors.black,
                      ),
                      label: Text(
                        "Sign up with facebook",
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 30,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          Colors.transparent,
                        ),
                        elevation: MaterialStateProperty.all(0),
                      ),
                      onPressed: () {},
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Already have a account!",
                            style: GoogleFonts.poppins(
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Login",
                            style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
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
