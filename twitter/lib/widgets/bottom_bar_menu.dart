import 'package:flutter/material.dart';
import 'package:twitter/providers/app_state.dart';
import 'package:twitter/screens/home_screen.dart';
import 'package:twitter/screens/notifications_screen.dart';
import 'package:twitter/screens/search_screen.dart';
import 'package:twitter/screens/chats_screen.dart';

// create row of icons that will be used in the bottom bar
// each icon navigates to corresponding screen
// icon is highlighted with the color blue when page is active
// uses pageIndex from app_state to track which page is active
class BottomMenuBar extends StatefulWidget {
  final menuOptions = [
    const HomeScreen(),
    const SearchScreen(),
    const NotificationsScreen(),
    const ChatsScreen(),
  ];
  BottomMenuBar({Key? key}) : super(key: key);

  @override
  _BottomMenuBarState createState() => _BottomMenuBarState();
}

class _BottomMenuBarState extends State<BottomMenuBar> {
  int index = AppState().pageIndex;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications),
          label: 'Notifications',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.chat),
          label: 'Chats',
        ),
      ],
      currentIndex: index,
      selectedItemColor: Colors.blue,
      onTap: (int index) {
        AppState().setpageIndex = index;
      },
    );
  }
}
