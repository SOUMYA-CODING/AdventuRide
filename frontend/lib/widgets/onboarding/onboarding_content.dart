import 'package:flutter/material.dart';
import 'package:frontend/core/colors.dart';
import 'package:frontend/main.dart';
import 'package:frontend/model/onboarding_model.dart';
import 'package:frontend/widgets/onboarding/indicator.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingContent extends StatelessWidget {
  const OnboardingContent({
    super.key,
    required this.pageIndex,
    required this.pageController,
  });

  final int pageIndex;
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          Text(
            "Explore the beauty of the India!",
            style: GoogleFonts.poppins(
              fontSize: 45,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Row(
            children: [
              ...List.generate(
                dummyOnboardData.length,
                (index) => Padding(
                  padding: const EdgeInsets.only(right: 7),
                  child: DotIndicator(isActive: index == pageIndex),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: ElevatedButton(
              style: ButtonStyle(
                padding: MaterialStateProperty.all(
                  const EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 20,
                  ),
                ),
                backgroundColor: MaterialStateProperty.all(
                  CustomColor.secondaryColor,
                ),
              ),
              onPressed: () {
                if (pageIndex < dummyOnboardData.length - 1) {
                  pageController.nextPage(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.ease,
                  );
                } else {
                  Navigator.of(context).pushReplacementNamed(
                    RoutePath.loginScreenRoute,
                  );
                }
              },
              child: Text(
                pageIndex < dummyOnboardData.length - 1
                    ? 'Next'
                    : 'Get Started',
                style: const TextStyle(
                  color: CustomColor.primaryColor,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
