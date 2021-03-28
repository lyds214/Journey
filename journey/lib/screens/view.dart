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
          SizedBox(height: mediaQuery.padding.top),
          Container(
            height: 50,
            width: mediaQuery.size.width,
            child: Text('${DateFormat.yMMMd().format(widget.item.date)}',
                textAlign: TextAlign.left,
                style: DefaultTextStyle.of(context)
                    .style
                    .apply(fontSizeFactor: 2.0)),
          ),

          SizedBox(height: 15),
          Container(
            height: 50,
            width: mediaQuery.size.width,
            child: Text('Mood: ${widget.item.mood}',
                textAlign: TextAlign.left,
                style: DefaultTextStyle.of(context)
                    .style
                    .apply(fontSizeFactor: 1.5)),
          ),

          SizedBox(height: 15),
          Container(
            width: mediaQuery.size.width,
            child: Text(widget.item.journal,
                textAlign: TextAlign.left,
                style: DefaultTextStyle.of(context)
                    .style
                    .apply(fontSizeFactor: 1.0)),
          ),
          SizedBox(height: 50),
        ]
      )
    );

    return Scaffold(
      body: pageBody,
    );
  }
}