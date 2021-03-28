import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:journey/entry.dart';
import 'package:journey/screens/entries.dart';
import '../demo.dart' as global;
import 'package:journey/screens/tabs.dart';

class Journal extends StatefulWidget {
  final int mood;
  final int music;

  Journal({this.mood, this.music});

  @override
  JournalState createState() {
    return JournalState();
  }
}

class JournalState extends State<Journal> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _titleController = TextEditingController();

  final pageBody = SingleChildScrollView(
    padding: const EdgeInsets.all(30),
    child: Column(
        children: <Widget>[
          TextFormField(
            style: TextStyle(
              color: Colors.white,
            ),
            controller: _titleController,
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[900],
        elevation: 0,
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
            onPressed: () {
              Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Tabs()),
                        );
            },
          )
        ],
      ),
      key: _formKey,
      body: pageBody,
    );
  }
}
