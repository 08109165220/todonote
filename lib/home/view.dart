import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../note/view.dart';
import '../tittles/view.dart';
import 'logic.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final logic = Get.put(HomeLogic());

  final state = Get.find<HomeLogic>().state;

final List<Widget> _pages = [   NotePage(),
  TittlesPage(), ];

// Set the initial index of the selected page
int _selectedIndex = 0;

// Handle the onTap event for the BottomNavigationBar items
void _onItemTapped(int index) {

  setState(() {
    _selectedIndex = index;
  });
}

@override
Widget build(BuildContext context) {
  return Scaffold(
    body: _pages[_selectedIndex], // Display the selected page
    bottomNavigationBar: BottomNavigationBar(
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.video_library),
          label: 'video ',
        ),

      ],
    ),
  );
}
}