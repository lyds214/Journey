import 'package:flutter/material.dart';
import 'package:journey/Journal/journal.dart';

class MusicSelection extends StatefulWidget {
  @override
  _MusicSelectionState createState() => _MusicSelectionState();
}

class _MusicSelectionState extends State<MusicSelection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.all(55),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Choose a music genre that fits your mood!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              SizedBox(height: 130),
              Container(
                width: 300,
                height: 80,
                child: TextButton(
                  child: Text("Happy".toUpperCase(),
                      style: TextStyle(fontSize: 20)),
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all<EdgeInsets>(
                          EdgeInsets.all(15)),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.white)))),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Journal()),
                    );
                  },
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: 300,
                height: 80,
                child: TextButton(
                  child:
                      Text("Sad".toUpperCase(), style: TextStyle(fontSize: 20)),
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all<EdgeInsets>(
                          EdgeInsets.all(15)),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.white)))),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Journal()),
                    );
                  },
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: 300,
                height: 80,
                child: TextButton(
                  child: Text("Angry".toUpperCase(),
                      style: TextStyle(fontSize: 20)),
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all<EdgeInsets>(
                          EdgeInsets.all(15)),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.white)))),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Journal()),
                    );
                  },
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: 300,
                height: 80,
                child: TextButton(
                  child: Text("Calm".toUpperCase(),
                      style: TextStyle(fontSize: 20)),
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all<EdgeInsets>(
                          EdgeInsets.all(15)),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.white)))),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Journal()),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
