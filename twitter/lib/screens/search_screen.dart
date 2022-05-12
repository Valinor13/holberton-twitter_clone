import 'package:flutter/material.dart';
import 'package:twitter/fake/fake_data.dart';
import 'package:twitter/widgets/users_search_results_widget.dart';

class SearchScreen extends StatelessWidget {
  final List<Map<String, dynamic>> users = FakeData().users;

  SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
        // Column(
        // children: [
        // Row(
        //   children: [
        //     Container(
        //       margin: const EdgeInsets.symmetric(horizontal: 35, vertical: 20),
        //       decoration: BoxDecoration(
        //         color: Colors.grey.shade200,
        //         borderRadius: BorderRadius.circular(30),
        //       ),
        //       child: TextField(
        //         controller: TextEditingController(),
        //         decoration: InputDecoration(
        //           border: OutlineInputBorder(
        //             borderRadius: BorderRadius.circular(30),
        //             borderSide: const BorderSide(
        //               color: Colors.blue,
        //             ),
        //           ),
        //           hintText: 'Search...',
        //         ),
        //       ),
        //     ),
        //     IconButton(
        //       icon: const Icon(Icons.settings),
        //       onPressed: () {},
        //     ),
        //   ],
        // ),
        ListView.builder(
      itemCount: users.length,
      itemBuilder: (context, index) {
        return UserSearchResultsWidget(
          name: users[index]['name'],
          username: users[index]['username'],
          imgUrl: users[index]['imgUrl'],
        );
      },
      //   )
      // ],
    );
  }
}
