import 'dart:math';

import 'package:flutter/material.dart';
import 'package:lovechat/presentation/auth/login/login_screen.dart';
import 'package:lovechat/presentation/auth/register/register_screen.dart';

bool _showLoginPage = true;

class FlipAnimation extends StatefulWidget {
  const FlipAnimation({super.key});

  @override
  State<FlipAnimation> createState() => _FlipAnimationState();
}

class _FlipAnimationState extends State<FlipAnimation> {
  switchAuthPage() {
    setState(() {
      _showLoginPage = !_showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      layoutBuilder: (widget, list) =>
          Stack(children: [if (widget != null) widget, ...list]),
      transitionBuilder: __transitionBuilder,
      duration: Duration(milliseconds: 700),
      child: _showLoginPage
          ? LoginScreen(
              switchAuthPage: () => switchAuthPage(),
            )
          : RegisterScreen(switchAuthPage: () => switchAuthPage()),
      //switchInCurve: Curves.easeInBack,
      //switchOutCurve: Curves.easeInBack.flipped
    );
  }
}

Widget __transitionBuilder(Widget widget, Animation<double> animation) {
  final rotateAnim = Tween(begin: pi, end: 0.0).animate(animation);
  return AnimatedBuilder(
    animation: rotateAnim,
    child: widget,
    builder: (context, widget) {
      final isUnder = (ValueKey(_showLoginPage) != widget!.key);
      final value = isUnder ? min(rotateAnim.value, pi / 2) : rotateAnim.value;
      var tilt = ((animation.value - 0.5).abs() - 0.5) * 0.003;
      tilt *= isUnder ? -2.0 : 2.0;
      return Transform(
        transform: Matrix4.rotationY(value)..setEntry(2, 0, tilt),
        alignment: Alignment.center,
        child: widget,
      );
    },
  );
}
