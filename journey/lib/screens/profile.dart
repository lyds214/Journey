import 'package:flutter/material.dart';

class ProfileView extends StatefulWidget {
  static const routeName = '/profile';

  _ProfileViewState createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.settings,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(24),
        child: Text(
          "Your most common mood this month so far is HAPPY with 5 instances",
          style: TextStyle(
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}
