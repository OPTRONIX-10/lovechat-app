import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lovechat/core/constants/constants.dart';

class MatchingScreen extends StatelessWidget {
  const MatchingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  radius: 70.r,
                ),
                SizedBox(
                  width: 20.w,
                ),
                CircleAvatar(
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  radius: 70.r,
                )
              ],
            ),
          ),
          SizedBox(
            height: height1,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Text('Cancel',
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.primaryContainer,
                        fontSize: 16.sp)),
                style: ElevatedButton.styleFrom(
                    fixedSize: Size(100.w, 40.h),
                    backgroundColor: Theme.of(context).colorScheme.primary),
              ),
              SizedBox(
                width: 80.w,
              ),
              ElevatedButton(
                  onPressed: () {},
                  child: Text('Chat',
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.primaryContainer,
                          fontSize: 16.sp)),
                  style: ElevatedButton.styleFrom(
                      fixedSize: Size(100.w, 40.h),
                      backgroundColor: Theme.of(context).colorScheme.primary))
            ],
          )
        ],
      )),
    );
  }
}
