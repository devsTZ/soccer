import 'package:flutter/material.dart';
import 'package:zero/constant/app_Helper.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _indexSelected = 0;
  static const List<Widget> _pages = <Widget>[
    Center(
      child: Text('Page 01'),
    ),
    Center(
      child: Text('Page 02'),
    ),
    Center(
      child: Text('Page 03'),
    ),
    Center(
      child: Text('Page 04'),
    ),
  ];
  @override
  void _onItemTapped(int index) {
    setState(() {
      _indexSelected = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: const Center(
          child: Text(
            'SOCCER',
            style: AppHelper.appHeader,
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        currentIndex: _indexSelected,
        backgroundColor: Colors.deepOrange,
        iconSize: 20,
        fixedColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.sports_baseball_rounded,
              ),
              label: 'Soccer'),
          BottomNavigationBarItem(
              icon: Icon(Icons.chat_rounded), label: 'Message'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_2_rounded), label: 'Profile'),
        ],
      ),
      // drawer: Drawer(
      //   backgroundColor: Colors.red,
      // ),
      body: Center(
        child: _pages.elementAt(_indexSelected),
      ),
    );
  }
}
