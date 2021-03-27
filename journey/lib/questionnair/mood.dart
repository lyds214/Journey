import 'package:flutter/material.dart';
import 'package:journey/music_selection.dart';

class Question extends StatefulWidget {
  @override
  _QuestionState createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 100, 20, 100),
              child: Text(
                "How are you feeling today?",
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(6, 100, 5, 1),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.face_outlined),
                      color: Colors.white,
                      iconSize: 60,
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
                      icon: Icon(Icons.face_outlined),
                      color: Colors.white,
                      iconSize: 60,
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
                      icon: Icon(Icons.face_outlined),
                      color: Colors.white,
                      iconSize: 60,
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
                      icon: Icon(Icons.face_outlined),
                      color: Colors.white,
                      iconSize: 60,
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
                      icon: Icon(Icons.face_outlined),
                      color: Colors.white,
                      iconSize: 60,
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
        ],
      ),
    );
  }
}
