import 'package:flutter/material.dart';
import 'package:lovechat/presentation/auth/gender/gender_selection_screen.dart';
import 'package:lovechat/presentation/auth/login/login_screen.dart';
import 'package:lovechat/presentation/main_screens/chat_screen.dart';
import 'package:lovechat/presentation/main_screens/home_screen.dart';
import 'package:lovechat/presentation/main_screens/matching_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ChatScreen(),
    );
  }
}
