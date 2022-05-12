import 'package:flutter/material.dart';

class UserSearchResultsWidget extends StatelessWidget {
  final String name;
  final String username;
  final String imgUrl;

  const UserSearchResultsWidget({
    Key? key,
    required this.name,
    required this.username,
    required this.imgUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: const RoundedRectangleBorder(
        side: BorderSide(color: Colors.grey, width: .3),
      ),
      leading: CircleAvatar(
        backgroundImage: NetworkImage(imgUrl),
      ),
      title: Text(name),
      subtitle: Text(username),
    );
  }
}
