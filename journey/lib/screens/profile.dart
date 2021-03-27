import 'package:flutter/material.dart';

class ProfileView extends StatefulWidget {
  static const routeName = '/profile';

  _ProfileViewState createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Your most common mood this month so far is 'HAPPY' with 5 instances")),
    );
  }
}