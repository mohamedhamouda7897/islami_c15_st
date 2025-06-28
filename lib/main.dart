import 'package:flutter/material.dart';
import 'package:islami_c15_st/screens/home/home_screen.dart';
import 'package:islami_c15_st/screens/onboarding/onboarding_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: OnboardingScreen.route,
      routes: {
        OnboardingScreen.route: (context) => OnboardingScreen(),
        HomeScreen.route : (_)=>HomeScreen(),
      },
    );
  }
}
