import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fancy_on_boarding/fancy_on_boarding.dart';
import 'package:journey/screens/tabs.dart';

class OnBoarding extends StatefulWidget {
  static const routeName = '/onboarding';
  String userRole = '';

  OnBoarding({this.userRole});

  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  String uid;

  void initState() {
    super.initState();
    fetchUserID();
  }

  fetchUserID() {
    // uid = FirebaseAuth.instance.currentUser.uid;
  }
  final pageList = [
    PageModel(
      color: Color(0xFF4527A0),
      heroImagePath: 'assets/img/img1.png',
      title: Text(
        "Welcome to Journey!",
        style: TextStyle(
          fontSize: 34,
          fontWeight: FontWeight.w800,
          color: Colors.white,
        ),
      ),
      body: Text(""),
      iconImagePath: 'assets/img/img1.png',
    ),
    PageModel(
      color: Color(0xFF512DA8),
      heroImagePath: 'assets/img/img3.png',
      title: Text(
        "Purpose",
        style: TextStyle(
          fontSize: 34,
          fontWeight: FontWeight.w800,
          color: Colors.white,
        ),
      ),
      body: Text(
        "This app is designed to elevate and keep track of your mood.",
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
        ),
      ),
      iconImagePath: 'assets/img/img1.png',
    ),
    PageModel(
      color: Color(0xFF5E35B1),
      heroImagePath: 'assets/img/img3.png',
      title: Text(
        "Give and Take",
        style: TextStyle(
          fontSize: 34,
          fontWeight: FontWeight.w800,
          color: Colors.white,
        ),
      ),
      body: Text(
        "You can write a journal, listen to music, and track your progress!",
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
        ),
      ),
      iconImagePath: 'assets/img/img1.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: FancyOnBoarding(
        doneButtonText: "Done",
        skipButtonText: "Skip",
        onDoneButtonPressed: () => Navigator.of(context).pushNamed('home.dart'),
        onSkipButtonPressed: () => Navigator.of(context).pushNamed('home.dart'),
        pageList: pageList,
      ),
    );
  }
}
