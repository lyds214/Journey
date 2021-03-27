import 'package:flutter/material.dart';

class EntryView extends StatefulWidget {
  static const routeName = '/Entry';

  _EntryViewState createState() => _EntryViewState();
}

class _EntryViewState extends State<EntryView> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Entry")),
    );
  }
}