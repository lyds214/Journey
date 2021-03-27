import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
      ),
      key: _formKey,
      body: Column(
        children: <Widget>[
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Title',
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
            decoration: const InputDecoration(
              hintText: 'Journal',
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
