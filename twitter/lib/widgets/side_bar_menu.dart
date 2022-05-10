import 'package:flutter/material.dart';

class SideBarMenu extends StatefulWidget {
  const SideBarMenu({Key? key}) : super(key: key);

  @override
  State<SideBarMenu> createState() => _SideBarMenuState();
}

class _SideBarMenuState extends State<SideBarMenu> {
  int _followers = 0;
  int _following = 0;
  String _username = 'Username';

  @override
  initState() {
    super.initState();
    _username = 'UserName';
    _followers = 0;
    _following = 0;
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.transparent,
            ),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                  'https://i.imgur.com/wqJ2Qc8.jpg?1',
                  width: 100,
                  height: 100,
                ),
              ),
            ),
            accountName: Text(
              _username,
              style: const TextStyle(
                color: Colors.grey,
              ),
            ),
            accountEmail: Text(
              '$_followers followers \t $_following following',
              style: const TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Home'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.view_list_rounded),
            title: const Text('Lists'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.bookmark),
            title: const Text('Bookmark'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.flash_on),
            title: const Text('Moments'),
            onTap: () {},
          ),
          const Divider(),
          ListTile(
            title: const Text('Settings and Privacy'),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Help Center'),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Logout'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
