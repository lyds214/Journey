import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  static const routeName = '/home';

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  Widget build(BuildContext context) {

    final mediaQuery = MediaQuery.of(context);

    final newEntry = FloatingActionButton(
      onPressed: () {},
      child: const Icon(Icons.add),
      backgroundColor: Colors.blue,
    );

    final pageBody = Container(
      height: (mediaQuery.size.height -
          mediaQuery.padding.top),
      width: mediaQuery.size.width,
      padding: const EdgeInsets.all(15),
      child: Column(
        children: <Widget>[
          Spacer(),

          Container(
            height: 50,
            width: mediaQuery.size.width,
            child: Text(
              "Good Afternoon, User",
              textAlign: TextAlign.left,
              style: DefaultTextStyle.of(context).style.apply(fontSizeFactor: 2.0)
            ),
          ),

          Spacer(),

          Container(
            height: 200,
            child: Text(
              "Reflection Question"
            ),
          ),

          Spacer(),

          Container(
            height: 200,
            child: Text(
              "Spotify Recommendations"
            )
          ),

          Spacer(),

          Divider(
            height: 20,
            thickness: 5,
            indent: 20,
            endIndent: 20,
            color: Colors.white,
          ),

          Spacer(flex: 2),
        ]
      )
    );

    return Scaffold(
      body: pageBody,
      floatingActionButton: newEntry,
    );
  }
}