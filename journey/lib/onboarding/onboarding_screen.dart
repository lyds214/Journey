import 'package:flutter/material.dart';
import 'package:fancy_on_boarding/fancy_on_boarding.dart';

class OnBoardingScreen extends StatefulWidget {
  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final pageList = [
    PageModel(
      color: Color(0xFF01579B),
      heroImagePath: 'assets/img/meme1.jpg',
      title: Text(
        "Welcome to Journey!",
        style: TextStyle(
          fontSize: 34,
          fontWeight: FontWeight.w800,
          color: Colors.purple[900],
        ),
      ),
      body: Text(""),
      iconImagePath: '',
    ),
    PageModel(
      color: Color(0xFF0277BD),
      heroImagePath: 'assets/img/meme2.jpg',
      title: Text(
        "Purpose",
        style: TextStyle(
          fontSize: 34,
          fontWeight: FontWeight.w800,
          color: Colors.white,
        ),
      ),
      body: Text(
        "This app is designed to help donors distribute resources for students in need.",
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
        ),
      ),
      iconImagePath: '',
    ),
    PageModel(
      color: Color(0xFF0288D1),
      heroImagePath: 'assets/img/meme3.png',
      title: Text(
        "Give and Take",
        style: TextStyle(
          fontSize: 34,
          fontWeight: FontWeight.w800,
          color: Colors.white,
        ),
      ),
      body: Text(
        "Students can create requests to their donors and receive their needs!",
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
        ),
      ),
      iconImagePath: '',
    ),
    PageModel(
      color: Color(0xFF039BE5),
      heroImagePath: 'assets/img/meme4.png',
      title: Text(
        "Chat",
        style: TextStyle(
          fontSize: 34,
          fontWeight: FontWeight.w800,
          color: Colors.white,
        ),
      ),
      body: Text(
        "Students can chat with their donors about their needs.",
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
        ),
      ),
      iconImagePath: '',
    ),
  ];
  @override
  Widget build(BuildContext context) {

    final mediaQuery = MediaQuery.of(context);

    final pageBody = Container(
      height: (mediaQuery.size.height -
          mediaQuery.padding.top),
      child: FancyOnBoarding(
        doneButtonText: "Done",
        skipButtonText: "Skip",
        onDoneButtonPressed: () =>
            Navigator.of(context).pushReplacementNamed('/tabs'),
        onSkipButtonPressed: () =>
            Navigator.of(context).pushReplacementNamed('/tabs'),
        pageList: pageList,
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: pageBody,
    );
  }
}
