import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  Widget build(BuildContext context) {

    final mediaQuery = MediaQuery.of(context);

    final pageBody = Container(
      height: (mediaQuery.size.height -
          mediaQuery.padding.top),
      child: Center(child: Text("Test")),
    );

    return Scaffold(
      body: pageBody,
    );
  }
}