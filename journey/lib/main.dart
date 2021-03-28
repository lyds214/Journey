import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Views
import './screens/tabs.dart';
import './screens/home.dart';
import './onboarding/onboarding_screen.dart';

import 'demo.dart' as globals;
import 'entry.dart';

void main() {
  globals.demo = [
    Entry(DateTime.now(), 1, 3, "Bad day", "I had a terrible day!"),
    Entry(DateTime.now(), 2, 2, "Sad day", "I am having a sad day today."),
    Entry(DateTime.now(), 3, 4, "Neutral day", "Today has been alright."),
    Entry(DateTime.now(), 3, 4, "OK day", "Today was better than yesterday"),
    Entry(DateTime.now(), 5, 1, "Great day!",
        "WOW IM SO HAPPY! Today has been the greatest day!")
  ];
  runApp(Journey());
}

class Journey extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Journey',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: AppBarTheme(color: Color(0xFF4A14C)),
        scaffoldBackgroundColor: Colors.purple[900],
        textTheme: GoogleFonts.montserratTextTheme(
          TextTheme(
            bodyText1: TextStyle(),
            bodyText2: TextStyle(),
          ).apply(
            bodyColor: Colors.white,
            displayColor: Colors.blue,
          ),
        ),
      ),
      routes: {
        OnBoarding.routeName: (ctx) => OnBoarding(),
        Tabs.routeName: (ctx) => Tabs(),
        HomeView.routeName: (ctx) => HomeView(),
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (ctx) => Tabs());
      },
      home: OnBoarding(),
    );
  }
}
