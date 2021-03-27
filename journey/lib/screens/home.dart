import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:journey/music_selection.dart';
import 'package:journey/questionnair/mood.dart';

class HomeView extends StatefulWidget {
  static const routeName = '/home';

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    final newEntry = FloatingActionButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Question()),
        );
      },
      child: const Icon(Icons.add),
      backgroundColor: Colors.blue,
    );

    final pageBody = Container(
        height: (mediaQuery.size.height - mediaQuery.padding.top),
        width: mediaQuery.size.width,
        padding: const EdgeInsets.all(30),
        child: Column(children: <Widget>[
          Spacer(),

          Container(
            height: 50,
            width: mediaQuery.size.width,
            child: Text("Good Afternoon, User",
                textAlign: TextAlign.left,
                style: DefaultTextStyle.of(context)
                    .style
                    .apply(fontSizeFactor: 2.0)),
          ),

          Spacer(),

          Container(
            height: 50,
            child: Text("Reflection Question"),
          ),

          Spacer(),

          Container(
              height: 200,
              width: mediaQuery.size.width,
              color: Colors.black,
              child: Text("Spotify Recommendations")),

          Spacer(),

          Divider(
            height: 20,
            thickness: 5,
            indent: 20,
            endIndent: 20,
            color: Colors.white,
          ),

          // FutureBuilder(
          //   future: _getQuote(),
          //   builder: (context, snapshot) {
          //     return snapshot.connectionState == ConnectionState.done
          //       ? Center(
          //           child: Text(
          //           snapshot.data,
          //           textAlign: TextAlign.center,
          //         ))
          //       : Center(child: CircularProgressIndicator());
          //   }
          // ),

          Spacer(flex: 2),
        ]));

    return Scaffold(
      body: pageBody,
      floatingActionButton: newEntry,
    );
  }
}

// Future<String> _getQuote() async {
//   final res = await http.get('https://zenquotes.io/api/today');
//   return json.decode(res.body)['q']['a']['d'];
// }