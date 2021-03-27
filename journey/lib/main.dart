import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Views
import './screens/tabs.dart';
import './screens/home.dart';
import './onboarding/onboarding_screen.dart';

void main() {
  runApp(Journey());
}

class Journey extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Journey',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: AppBarTheme(color: Color(0xFF4A14C)),
        scaffoldBackgroundColor: Colors.purple[900],
        textTheme: GoogleFonts.openSansTextTheme(
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
