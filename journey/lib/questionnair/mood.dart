import 'package:flutter/material.dart';
import 'package:journey/music_selection.dart';

class Question extends StatefulWidget {
  @override
  _QuestionState createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  @override
  Widget build(BuildContext context) {

    final mediaQuery = MediaQuery.of(context);

    final pageBody = Container(
      height: (mediaQuery.size.height -
          mediaQuery.padding.top),
      width: mediaQuery.size.width,
      padding: const EdgeInsets.all(30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: mediaQuery.padding.top),
          Container(
              child: Text(
                "How are you feeling today?",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
          ),
          Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.mood_bad),
                      color: Colors.white,
                      iconSize: 50,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MusicSelection()),
                        );
                      },
                    ),
                    SizedBox(width: 5),
                    IconButton(
                      icon: Icon(Icons.sentiment_dissatisfied_outlined),
                      color: Colors.white,
                      iconSize: 50,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MusicSelection()),
                        );
                      },
                    ),
                    SizedBox(width: 5),
                    IconButton(
                      icon: Icon(Icons.sentiment_neutral),
                      color: Colors.white,
                      iconSize: 50,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MusicSelection()),
                        );
                      },
                    ),
                    SizedBox(width: 5),
                    IconButton(
                      icon: Icon(Icons.sentiment_satisfied_alt),
                      color: Colors.white,
                      iconSize: 50,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MusicSelection()),
                        );
                      },
                    ),
                    SizedBox(width: 5),
                    IconButton(
                      icon: Icon(Icons.sentiment_very_satisfied),
                      color: Colors.white,
                      iconSize: 50,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MusicSelection()),
                        );
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
          Spacer(flex: 2),
        ],
      ),
    );

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.purple[900],
      ),
      body: pageBody,
    );
  }
}
