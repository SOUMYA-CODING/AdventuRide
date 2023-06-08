import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:frontend/core/colors.dart';
import 'package:frontend/main.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                          'https://images.unsplash.com/photo-1560853950-2502ec2ab867?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=426&q=80'),
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
                  stops: const [0.5, 0.9],
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
                  Text(
                    "Login",
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
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Forget Password?",
                        style: GoogleFonts.poppins(
                          color: Colors.black,
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
                        "Login",
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
                            ),
                          ),
                        ),
                      ),
                      onPressed: () {},
                      icon: const Icon(
                        Icons.facebook,
                        color: Colors.black,
                      ),
                      label: Text(
                        "Sign in with facebook",
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
                      onPressed: () {
                        Navigator.of(context).pushNamed(
                          RoutePath.registrationScreenRoute,
                        );
                      },
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don't have a account!",
                            style: GoogleFonts.poppins(
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Register",
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
