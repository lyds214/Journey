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
    Entry(DateTime.now(), 1, 3, "Terrible"),
    Entry(DateTime.now(), 2, 2, "Bad"),
    Entry(DateTime.now(), 3, 4, "Neutral"),
    Entry(DateTime.now(), 3, 4, "Okay"),
    Entry(DateTime.now(), 5, 1,
        "WOW IM SO HAPPY! The new Attack on Titan episode came out!")
    ];
  runApp(Journey());
}

class Journey extends StatelessWidget {

  List<Entry> demo = [
    Entry(DateTime.now(), 1, 3, "Terrible"),
    Entry(DateTime.now(), 2, 2, "Bad"),
    Entry(DateTime.now(), 3, 4, "Neutral"),
    Entry(DateTime.now(), 3, 4, "Okay"),
    Entry(DateTime.now(), 5, 1,
        "WOW IM SO HAPPY! The new Attack on Titan episode came out!")
    ];

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
      home: Tabs(),
    );
  }
}
