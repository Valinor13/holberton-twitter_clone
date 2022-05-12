import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
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
  final titleOptions = [
    'Home',
    'Search',
    'Notifications',
    'Chats',
  ];

  final menuOptions = [
    const HomeScreen(),
    SearchScreen(),
    const NotificationsScreen(),
    const ChatsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<AppState>(
      builder: (BuildContext context, AppState appState, Widget? child) {
        return Scaffold(
          appBar: AppBar(
            title: Text(
              titleOptions[appState.pageIndex],
            ),
            centerTitle: true,
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
          ),
          body: menuOptions[appState.pageIndex],
          bottomNavigationBar: const BottomMenuBar(),
          drawer: const SideBarMenu(),
        );
      },
    );
  }
}
