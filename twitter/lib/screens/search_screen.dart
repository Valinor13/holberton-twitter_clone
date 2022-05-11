import 'package:flutter/material.dart';
import 'package:twitter/widgets/bottom_bar_menu.dart';

class ChatsScreen extends StatefulWidget {
  const ChatsScreen({Key? key}) : super(key: key);

  @override
  _ChatsScreenState createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chats'),
      ),
      body: const Center(
        child: Text('Chats'),
      ),
      bottomNavigationBar: BottomMenuBar(),
    );
  }
}
