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
      child: Column(
        children: <Widget>[
          Spacer(),

          Container(
            height: 50,
            child: Text(
              "Good Afternoon, User"
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