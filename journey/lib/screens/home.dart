import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:journey/music_selection.dart';
import 'package:journey/questionnair/mood.dart';

// Inspirational quotes provided by <a href="https://zenquotes.io/" target="_blank">ZenQuotes API</a>
class Quote {
  final String text;
  final String author;
  final String html;
  Quote({this.text, this.author, this.html});

  factory Quote.fromJson(List<dynamic> json) {
    return Quote(
      text: json[0]['q'],
      author: json[0]['a'],
      html: json[0]['h'],
    );
  }
}

Future<Quote> _getQuote() async {
  final res = await http.get(Uri.https('zenquotes.io', "api/today"));
  if (res.statusCode == 200)
  {
    return Quote.fromJson(json.decode(res.body));
  }
  else
  {
    throw Exception("Failed to load");
  }
}

class HomeView extends StatefulWidget {
  static const routeName = '/home';

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  bool dailyEntry;

  Future<Quote> quote;

  @override
  void initState() {
    super.initState();
    quote = _getQuote();
  }

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
      backgroundColor: Colors.white,
      foregroundColor: Colors.purple[900],
    );

    final pageBody = Container(
      height: (mediaQuery.size.height -
          mediaQuery.padding.top),
      width: mediaQuery.size.width,
      padding: const EdgeInsets.all(30),
      child: Column(
        children: <Widget>[
          SizedBox(height: mediaQuery.padding.top),

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
              height: 200,
              width: mediaQuery.size.width,
              color: Colors.black,
              child: Text("Spotify Recommendations")),

          Spacer(),

          Container(
            height: 250,
            child: FutureBuilder<Quote>(
              future: quote,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return SafeArea(
                      child: Column(
                        children: <Widget>[
                          Divider(
                            height: 20,
                            thickness: 2,
                            indent: 20,
                            endIndent: 20,
                            color: Colors.white,
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 15.0),
                          ),
                          Text(
                            snapshot.data.text,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontStyle: FontStyle.italic,
                              fontSize: 26.0
                              )
                          ),

                          Padding(padding: const EdgeInsets.all(15)),
                          
                          Text(
                            "-- ${snapshot.data.author}",
                          ),

                          Padding(padding: const EdgeInsets.all(15)),

                          Text(
                            "Inspirational quotes provided by https://zenquotes.io/",
                            style: TextStyle(fontSize: 8)
                          ),
                        ],
                      ),
                  );
                } else if (snapshot.hasError) {
                  return Text("${snapshot.error}");
                }
                // By default, show a loading spinner.
                return Container(
                  alignment: Alignment.center,
                  width: 100,
                  child: CircularProgressIndicator(backgroundColor: Colors.transparent, valueColor: new AlwaysStoppedAnimation<Color>(Colors.white))
                );
                },
              ),
          ),

          SizedBox(height: mediaQuery.padding.bottom),
        ]));

    return Scaffold(
      body: pageBody,
      floatingActionButton: newEntry,
    );
  }
}

