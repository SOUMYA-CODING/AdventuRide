import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:frontend/core/colors.dart';
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
      initialRoute: RoutePath.dashboardTab,
      onGenerateRoute: Router.generateRoute,
    ),
  );
}

class RoutePath {
  static const onboardingScreenRoute = "/onboarding_screen";
  static const dashboardTab = "/dashboard_tab";
}

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutePath.onboardingScreenRoute:
        return MaterialPageRoute(
          builder: (_) => const OnboardingScreen(),
        );

      case RoutePath.dashboardTab:
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
