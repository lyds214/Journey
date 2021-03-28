import 'package:flutter/material.dart';

class ProfileView extends StatefulWidget {
  static const routeName = '/profile';

  _ProfileViewState createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    final pageBody = Container(
        height: (mediaQuery.size.height - mediaQuery.padding.top),
        width: mediaQuery.size.width,
        padding: const EdgeInsets.all(30),
        child: Column(
          children: <Widget>[
            SizedBox(height: mediaQuery.padding.top),
            Row(children: <Widget>[
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
            ]),
            Spacer(),
            Container(
              height: 600,
              child: GridView.count(
                primary: false,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
                children: <Widget>[
                  Container(
                    // decoration: BoxDecoration(
                    //   borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    // ),
                    padding: const EdgeInsets.all(30),
                    child: const Text(
                      "Your most common mood this month is HAPPY with 5 instances",
                      style: TextStyle(color: Colors.black),
                      textAlign: TextAlign.center,
                    ),
                    color: Colors.white,
                  ),
                  Container(
                    padding: const EdgeInsets.all(30),
                    child: const Text(
                      "You have created 5 entries!",
                      style: TextStyle(color: Colors.black),
                      textAlign: TextAlign.center,
                    ),
                    color: Colors.white,
                  ),
                  Container(
                    padding: const EdgeInsets.all(30),
                    child: const Text(
                      "Start building great habits",
                      style: TextStyle(color: Colors.black),
                      textAlign: TextAlign.center,
                    ),
                    color: Colors.white,
                  ),
                  Container(
                    padding: const EdgeInsets.all(30),
                    child: const Text(
                      "Contact support",
                      style: TextStyle(color: Colors.black),
                      textAlign: TextAlign.center,
                    ),
                    color: Colors.white,
                  ),
                ],
              ),
              // child: Text(
              //   "Your most common mood this month so far is HAPPY with 5 instances",
              //   style: TextStyle(
              //     fontSize: 30,
              //   ),
              // ),
            ),
            Spacer(),
            Spacer(flex: 3),
          ],
        ));

    return Scaffold(
      body: pageBody,
    );
  }
}
