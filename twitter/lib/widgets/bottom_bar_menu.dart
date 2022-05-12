import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:twitter/providers/app_state.dart';

// create row of icons that will be used in the bottom bar
// each icon navigates to corresponding screen
// icon is highlighted with the color blue when page is active
// uses pageIndex from app_state to track which page is active
class BottomMenuBar extends StatelessWidget {
  const BottomMenuBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<AppState>(
      builder: (BuildContext context, AppState appState, Widget? child) {
        return BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.bungalow_outlined),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search_outlined),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications_outlined),
              label: 'Notifications',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.email_outlined),
              label: 'Chats',
            ),
          ],
          selectedItemColor: Colors.blue,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Colors.grey,
          currentIndex: appState.pageIndex,
          onTap: (int index) {
            appState.setpageIndex = index;
          },
        );
      },
    );
  }
}
