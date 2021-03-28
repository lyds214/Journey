import 'package:flutter/material.dart';
import '../entry.dart';
import 'package:intl/intl.dart';

class View extends StatefulWidget {
  static const routeName = '/view';
  final Entry item;

  View({this.item});

  @override
  _ViewState createState() => _ViewState();
}

class _ViewState extends State<View> {

  @override
  Widget build(BuildContext) {

    final mediaQuery = MediaQuery.of(context);

    final pageBody = SingleChildScrollView(
      padding: const EdgeInsets.all(30),
      child: Column(
        children: <Widget>[
          SizedBox(height: 15),
          Container(
            height: 50,
            width: mediaQuery.size.width,
            child: Text('${DateFormat.yMMMd().format(widget.item.date)}',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 30),

                ),
          ),

          SizedBox(height: 15),
          Container(
            height: 50,
            width: mediaQuery.size.width,
            child: Text('Mood: ${widget.item.mood}',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 25),
            ),
          ),

          SizedBox(height: 15),
          Container(
            width: mediaQuery.size.width,
            child: Text('${widget.item.journal}',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 20),
            ),
          ),
          SizedBox(height: 50),
        ]
      )
    );

    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.purple[900],
      ),
      body: pageBody,
    );
  }
}