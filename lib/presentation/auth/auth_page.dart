import 'package:flutter/material.dart';
import 'package:lovechat/presentation/auth/common_widgets/flip_animation_widget.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
          image: AssetImage('assets/auth_images/login (1).jpg'),
          fit: BoxFit.cover,
        ))),
        Center(child: FlipAnimation())
    ]));
  }
}