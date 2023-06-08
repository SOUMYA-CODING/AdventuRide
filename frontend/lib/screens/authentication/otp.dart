import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:frontend/core/colors.dart';
import 'package:frontend/main.dart';
import 'package:google_fonts/google_fonts.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
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
                          'https://images.unsplash.com/photo-1583513645242-25a32d451084?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80'),
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
                    "Verify Your\nIdentity",
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
                    "We have just sent a verification code to\nsoumyaprakashsahu2001@gmail.com",
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 70.0,
                        child: TextField(
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                          decoration: const InputDecoration(
                            filled: true,
                            border: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: CustomColor.secondaryColor,
                              ),
                            ),
                          ),
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 70.0,
                        child: TextField(
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                          decoration: const InputDecoration(
                            filled: true,
                            border: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: CustomColor.secondaryColor,
                              ),
                            ),
                          ),
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 70.0,
                        child: TextField(
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                          decoration: const InputDecoration(
                            filled: true,
                            border: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: CustomColor.secondaryColor,
                              ),
                            ),
                          ),
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 70.0,
                        child: TextField(
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                          decoration: const InputDecoration(
                            filled: true,
                            border: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: CustomColor.secondaryColor,
                              ),
                            ),
                          ),
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                    width: double.infinity,
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
                            "Didn't recived the code?",
                            style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 11,
                            ),
                          ),
                          Text(
                            "Resend",
                            style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 11,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
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
                          RoutePath.accountSetupRoute,
                        );
                      },
                      child: Text(
                        "Verifications",
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
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          Colors.transparent,
                        ),
                        elevation: MaterialStateProperty.all(0),
                      ),
                      onPressed: () {},
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "By registering you agree to our",
                            style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 11,
                            ),
                          ),
                          Text(
                            "Terms of Service",
                            style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 11,
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
