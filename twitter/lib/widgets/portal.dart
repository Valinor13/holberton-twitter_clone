import 'package:flutter/material.dart';
import 'package:twitter/providers/app_state.dart';
import 'package:twitter/screens/home_screen.dart';
import 'package:twitter/screens/notifications_screen.dart';
import 'package:twitter/screens/search_screen.dart';
import 'package:twitter/screens/chats_screen.dart';
import 'package:twitter/widgets/bottom_bar_menu.dart';
import 'package:twitter/widgets/side_bar_menu.dart';

class Portal extends StatefulWidget {
  const Portal({Key? key}) : super(key: key);

  @override
  State<Portal> createState() => _PortalState();
}

class _PortalState extends State<Portal> {
  final _ = AppState();

  final titleOptions = [
    'Home',
    'Search',
    'Notifications',
    'Chats',
  ];

  final menuOptions = [
    const HomeScreen(),
    const SearchScreen(),
    const NotificationsScreen(),
    const ChatsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          titleOptions[_.pageIndex],
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: menuOptions[_.pageIndex],
      bottomNavigationBar: BottomMenuBar(index: _.pageIndex),
      drawer: const SideBarMenu(),
    );
  }
}
