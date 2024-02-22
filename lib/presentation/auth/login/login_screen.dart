import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:lovechat/core/constants/constants.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key, required this.switchAuthPage});
  final VoidCallback switchAuthPage;

  @override
  Widget build(BuildContext context) {
    return GlassmorphicContainer(
      key: ValueKey(true),
      width: glassmorphismWidth,
      height: glassmorphismHeight,
      borderRadius: 50.r,
      blur: 2,
      border: 1.5.r,
      linearGradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.white.withOpacity(0.0),
            Colors.white.withOpacity(0.4),
          ],
          stops: [
            0.1,
            1,
          ]),
      borderGradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Color(0xFFffffff).withOpacity(0.6),
          Color(0xFFFFFFFF).withOpacity(0.6),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextFormField(
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.all(Radius.circular(50.0)),
                ),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.all(Radius.circular(50.0))),
                suffixIcon: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Send OTP',
                      style: TextStyle(color: Colors.grey[800]),
                    )),
                // fillColor: Colors.white,
                // filled: true,
                hintText: 'Enter your phone number',
                hintStyle: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: height1),
            TextFormField(
              maxLength: 6,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                // fillColor: Colors.white,
                // filled: true,
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.all(Radius.circular(50.0))),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.all(Radius.circular(50.0)),
                ),
                hintText: 'Enter OTP',
                hintStyle: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                counterText: '',
                suffixIcon: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Verify',
                      style: TextStyle(color: Colors.grey[800]),
                    )),
              ),
            ),
            SizedBox(height: height1),
            ElevatedButton(
                onPressed: () {},
                child: const Text(
                  'Login',
                  style: TextStyle(color: Colors.black),
                ),
                style: ElevatedButton.styleFrom()),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Don\'t have an account?'),
                TextButton(
                  onPressed: () {
                    switchAuthPage();
                  },
                  child: const Text(
                    'Sign up',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
