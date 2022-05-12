import 'package:flutter/material.dart';
import 'package:twitter/widgets/users_search_results_widget.dart';

class SearchScreen extends StatelessWidget {
  final List<Map<String, dynamic>> users = [
    {
      'name': 'Rondel Stepper',
      'username': '@TheAlphamerc',
      'imgUrl':
          'https://images.unsplash.com/photo-1531427186611-ecfd6d936c79?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80',
    },
    {
      'name': 'Sonu Sharma',
      'username': '@Sonusihj',
      'imgUrl':
          'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80',
    },
    {
      'name': 'Deborah Couser',
      'username': '@Localhostrhlz',
      'imgUrl':
          'https://images.unsplash.com/photo-1531123897727-8f129e1688ce?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80',
    },
    {
      'name': 'Gerald Gunther',
      'username': '@purpleydkr',
      'imgUrl':
          'https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80',
    },
    {
      'name': 'Steven Zhao',
      'username': '@redibwx',
      'imgUrl':
          'https://images.unsplash.com/photo-1540569014015-19a7be504e3a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
    },
    {
      'name': 'Sarah Brightman',
      'username': '@yellow1wpu',
      'imgUrl':
          'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80',
    },
    {
      'name': 'Melissa Yu',
      'username': '@greeeneubf',
      'imgUrl':
          'https://images.unsplash.com/photo-1589525231707-f2de2428f59c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80',
    },
    {
      'name': 'Xander Coyote',
      'username': '@XanderC',
      'imgUrl':
          'https://images.unsplash.com/photo-1514222709107-a180c68d72b4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=898&q=80',
    },
    {
      'name': 'Krystal Bell',
      'username': '@orangezxsi',
      'imgUrl':
          'https://images.unsplash.com/photo-1531746020798-e6953c6e8e04?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=928&q=80',
    },
    {
      'name': 'Eric Sizeless',
      'username': '@Rondom',
      'imgUrl':
          'https://images.unsplash.com/photo-1556157382-97eda2d62296?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80',
    },
  ];

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
