import 'package:flutter/material.dart';

// Views
import 'home.dart';

class Tabs extends StatefulWidget {
  static const routeName = '/tabs';

  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {

  final List<Widget> _pages = [
    HomeView(),
    Center(child: Text("1")),
    Center(child: Text("2")),
  ];

  int _currentIndex = 0;

  void onTabTap(int index) {
   setState(() {
     _currentIndex = index;
   });
 }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
       onTap: onTabTap, // new
       currentIndex: _currentIndex, // new
       items: [
         new BottomNavigationBarItem(
           icon: Icon(Icons.home),
           title: Text('Home'),
         ),
         new BottomNavigationBarItem(
           icon: Icon(Icons.mail),
           title: Text('Messages'),
         ),
         new BottomNavigationBarItem(
           icon: Icon(Icons.person),
           title: Text('Profile')
         )
       ],
     );
  }
}