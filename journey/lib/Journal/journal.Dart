import 'package:flutter/material.dart';

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
        // backgroundColor: Colors.purple,
         title: Text("Journal"),
        // centerTitle: true,
        elevation: 0,
      ),
      key: _formKey,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Title',
            ),
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
