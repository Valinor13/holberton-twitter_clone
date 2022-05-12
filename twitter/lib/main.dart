import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:twitter/providers/app_state.dart';
import 'screens/sign_in_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AppState>(create: (_) => AppState()),
      ],
      child: const MaterialApp(
        home: SignIn(),
      ),
    );
  }
}
