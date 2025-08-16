import 'package:flutter/material.dart';
import 'package:islami_c15_st/cache/helper.dart';
import 'package:islami_c15_st/screens/hadeth_details_screen.dart';
import 'package:islami_c15_st/screens/home/home_screen.dart';
import 'package:islami_c15_st/screens/onboarding/onboarding_screen.dart';
import 'package:islami_c15_st/screens/sura_details_screen/sura_details_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.init();


  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  bool start = CacheHelper.getData("flag") ?? false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: start ? HomeScreen.route : OnboardingScreen.route,
      routes: {
        OnboardingScreen.route: (context) => OnboardingScreen(),
        HomeScreen.route: (_) => HomeScreen(),
        SuraDetailsScreen.route: (_) => SuraDetailsScreen(),
        HadethDetailsScreen.route: (_) => HadethDetailsScreen(),
      },
    );
  }
}
