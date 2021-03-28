import 'package:flutter/material.dart';

class ProfileView extends StatefulWidget {
  static const routeName = '/profile';

  _ProfileViewState createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  Widget build(BuildContext context) {

    final mediaQuery = MediaQuery.of(context);

    final pageBody = Container(
      height: (mediaQuery.size.height -
          mediaQuery.padding.top),
      width: mediaQuery.size.width,
      padding: const EdgeInsets.all(30),
      child: Column(
        children: <Widget>[
          SizedBox(height: mediaQuery.padding.top),
          Row(
            children: <Widget>[
              Container(
                height: 50,
                // width: mediaQuery.size.width,
                alignment: Alignment.topLeft,
                child: Text("Profile",
                    textAlign: TextAlign.left,
                    style: DefaultTextStyle.of(context)
                        .style
                        .apply(fontSizeFactor: 2.0)),
              ),
              Spacer(),
              IconButton(
                icon: Icon(
                  Icons.settings,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
            ]
          ),

          Spacer(),
          
          Container(
            child: Text(
              "Your most common mood this month so far is HAPPY with 5 instances",
              style: TextStyle(
                fontSize: 30,
              ),
            ),
          ),

          Spacer(),

        ],
      )
    );

    return Scaffold(
      body: pageBody,
    );
  }
}
