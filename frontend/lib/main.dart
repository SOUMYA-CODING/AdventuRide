import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:frontend/core/colors.dart';
import 'package:frontend/screens/authentication/account_setup.dart';
import 'package:frontend/screens/authentication/login.dart';
import 'package:frontend/screens/authentication/otp.dart';
import 'package:frontend/screens/authentication/password_reset.dart';
import 'package:frontend/screens/authentication/registration.dart';
import 'package:frontend/screens/authentication/registration_complete.dart';
import 'package:frontend/screens/dashboard/dashboard_tab.dart';
import 'package:frontend/screens/start/onboarding.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: CustomColor.backgroundBg.withOpacity(0.5),
      statusBarIconBrightness: Brightness.dark,
    ),
  );
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: RoutePath.onboardingScreenRoute,
      onGenerateRoute: Router.generateRoute,
    ),
  );
}

class RoutePath {
  // Start
  static const onboardingScreenRoute = "/onboarding_screen";

  // Authentication
  static const loginScreenRoute = '/login_screen';
  static const registrationScreenRoute = '/registration_screen';
  static const passwordResetScreenRoute = '/password_reset_screen';
  static const otpScreenRoute = '/otp_screen';
  static const accountSetupRoute = '/account_setup_screen';
  static const registrationCompleteRoute = 'registration_complete_screen';

  // Dashboard
  static const dashboardTabScreenRoute = "/dashboard_tab_screen";
}

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      // Start
      case RoutePath.onboardingScreenRoute:
        return MaterialPageRoute(
          builder: (_) => const OnboardingScreen(),
        );

      // Authentication
      case RoutePath.loginScreenRoute:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        );

      case RoutePath.registrationScreenRoute:
        return MaterialPageRoute(
          builder: (_) => const RegistrationScreen(),
        );

      case RoutePath.passwordResetScreenRoute:
        return MaterialPageRoute(
          builder: (_) => const PasswordResetScreen(),
        );

      case RoutePath.otpScreenRoute:
        return MaterialPageRoute(
          builder: (_) => const OtpScreen(),
        );

      case RoutePath.accountSetupRoute:
        return MaterialPageRoute(
          builder: (_) => const AccountSetupScreen(),
        );

      case RoutePath.registrationCompleteRoute:
        return MaterialPageRoute(
          builder: (_) => const RegistrationCompleteScreen(),
        );

      // Dashboard
      case RoutePath.dashboardTabScreenRoute:
        return MaterialPageRoute(
          builder: (_) => const DashboardTab(),
        );

      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: SafeArea(
              child: Center(
                child: Text("Onboarding"),
              ),
            ),
          ),
        );
    }
  }
}
