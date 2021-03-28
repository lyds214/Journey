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
              child: GridView.count(
                primary: false,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: const Text("He'd have you all unravel at the"),
                    color: Colors.teal[100],
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: const Text('Heed not the rabble'),
                    color: Colors.teal[200],
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: const Text('Sound of screams but the'),
                    color: Colors.teal[300],
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: const Text('Who scream'),
                    color: Colors.teal[400],
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: const Text('Revolution is coming...'),
                    color: Colors.teal[500],
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: const Text('Revolution, they...'),
                    color: Colors.teal[600],
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
            Container(
              child: Text(
                "You journaled 5 times this month. Great job!",
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
            Spacer(flex: 3),
          ],
        ));

    return Scaffold(
      body: pageBody,
    );
  }
}
