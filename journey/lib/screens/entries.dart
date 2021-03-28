import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../demo.dart' as global;
import '../entry.dart';
import 'view.dart';

class EntryView extends StatefulWidget {

  static const routeName = '/Entry';

  _EntryViewState createState() => _EntryViewState();
}

class _EntryViewState extends State<EntryView> {
  // Moods: 1 worst, 5 best
  // Music: 1 happy, 2 sad, 3 angry, 4 calm

  // List<Entry> _demo = [
  //   Entry(DateTime.now(), 1, 3, "Terrible"),
  //   Entry(DateTime.now(), 2, 2, "Bad"),
  //   Entry(DateTime.now(), 3, 4, "Neutral"),
  //   Entry(DateTime.now(), 3, 4, "Okay"),
  //   Entry(DateTime.now(), 5, 1,
  //       "WOW IM SO HAPPY! The new Attack on Titan episode came out!")
  // ];

  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    final pageBody = SingleChildScrollView(
      // height: (mediaQuery.size.height -
      //     mediaQuery.padding.top),
      // width: mediaQuery.size.width,
      padding: const EdgeInsets.all(30),
      child: Column(
        children: <Widget>[
          SizedBox(height: mediaQuery.padding.top),
          Container(
            height: 50,
            width: mediaQuery.size.width,
            child: Text("Entries",
                textAlign: TextAlign.left,
                style: DefaultTextStyle.of(context)
                    .style
                    .apply(fontSizeFactor: 2.0)),
          ),
          SizedBox(height: 30),
          Container(
            height: (mediaQuery.size.height),
            child: ListView.separated(
              itemCount: global.demo.length,
              itemBuilder: (context, index) {
                return EntryCard(global.demo[index]);
              },
              separatorBuilder: (context, index) {
                return Padding(padding: const EdgeInsets.all(15));
              },
            ),
          ),
        ],
      ),
    );

    return Scaffold(
      body: pageBody,
    );
  }

  Widget EntryCard(Entry item) {
    return Ink(
      padding: const EdgeInsets.only(),
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        border: Border(
          top: BorderSide(
            width: 1,
            color: Colors.grey[300],
          ),
          bottom: BorderSide(
            width: 1,
            color: Colors.grey[300],
          ),
          left: BorderSide(
            width: 1,
            color: Colors.grey[300],
          ),
          right: BorderSide(
            width: 1,
            color: Colors.grey[300],
          ),
        ),
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            spreadRadius: 3,
            blurRadius: 7,
            offset: Offset(0, 10), // changes position of shadow
          ),
        ],
      ),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
              MaterialPageRoute(
                builder: (context) => View(item: item)),
          );
        },
        child: Row(
          children: <Widget>[
            Padding(padding: const EdgeInsets.all(5)),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        height: 25,
                        padding: const EdgeInsets.only(top: 5),
                        child: Text(
                          "Mood: ${item.mood}",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18, color: Colors.purple[900]),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Spacer(),
                      Container(
                        padding: const EdgeInsets.only(top: 5),
                        alignment: Alignment.centerRight,
                        child: Column(
                          children: <Widget>[
                            Text(
                              '${DateFormat.yMMMd().format(item.date)}',
                              style: TextStyle(color: Colors.purple[900])
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 5),
                        height: 25,
                        width: 25,
                        child: Center(
                            child: Icon(Icons.arrow_forward_ios,
                                color: Colors.grey, size: 15)),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Container(
                    height: 30,
                    padding: const EdgeInsets.only(bottom: 5, right: 5),
                    child: Text(
                        (item.title.length > 35)
                            ? '${item.title.substring(0, 35)}...'
                            : '${item.title}',
                        textAlign: TextAlign.left,
                        style: TextStyle(color: Colors.purple[900], fontSize: 15)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
