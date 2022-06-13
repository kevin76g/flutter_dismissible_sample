import 'package:flutter/material.dart';
import 'package:flutter_dismissible_sample/bookmark_screen.dart';
import 'main.dart';

class MyBottomNavigationBar extends StatefulWidget {
  final int selectedIndex;

  const MyBottomNavigationBar({Key? key, required this.selectedIndex})
      : super(key: key);

  @override
  State<MyBottomNavigationBar> createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    void _onItemTapped(int index) {
      setState(() {
        switch (index) {
          case (0):
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => const MyHomePage()),
                (_) => false);
            break;
          case (1):
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => const BookmarkScreen()),
                (_) => false);
            break;
          case (2):
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => const BookmarkScreen()),
                (_) => false);
            break;
        }
      });
    }

    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
        BottomNavigationBarItem(icon: Icon(Icons.bookmark), label: 'bookmark'),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
      ],
      currentIndex: widget.selectedIndex,
      selectedItemColor: Colors.blue,
      onTap: _onItemTapped,
    );
  }
}
