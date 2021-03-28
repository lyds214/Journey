import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:journey/screens/entries.dart';

class Journal extends StatefulWidget {
  @override
  JournalState createState() {
    return JournalState();
  }
}

class JournalState extends State<Journal> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          child: Row(
            children: <Widget>[
              Icon(Icons.date_range),
              Text('${DateFormat.yMMMd().format(DateTime.now())}'),
            ],
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.check,
              color: Colors.white,
            ),
            onPressed: () {},
          )
        ],
      ),
      key: _formKey,
      body: Column(
        children: <Widget>[
          TextFormField(
            style: TextStyle(
              color: Colors.white,
            ),
            decoration: const InputDecoration(
              hintText: 'Title',
              hintStyle: TextStyle(
                color: Colors.white,
              ),
            ),
            keyboardType: TextInputType.multiline,
            maxLines: null,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please create a title';
              }
              return null;
            },
          ),
          TextFormField(
            style: TextStyle(
              color: Colors.white,
            ),
            decoration: const InputDecoration(
              hintText: 'Journal',
              hintStyle: TextStyle(
                color: Colors.white,
              ),
              border: InputBorder.none,
            ),
            keyboardType: TextInputType.multiline,
            maxLines: null,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please create a write something in the journal';
              }
              return null;
            },
          ),
        ],
      ),
    );
  }
}
