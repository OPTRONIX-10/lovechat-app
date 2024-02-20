import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lovechat/core/constants/constants.dart';

class GenderSelectionScreen extends StatelessWidget {
  const GenderSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Tap to detect Gender',
                  //style: TextStyle(color: appTextColor, fontSize: 25),
                ),
                CircleAvatar(
                  radius: 100,
                  child: Text(
                    'Scan Face',
                    // style: TextStyle(color: appTextColor),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 35.h,
                  width: 120.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18.r),
                    border: Border.all(
                        width: 2.5.w,
                        color:
                            Theme.of(context).colorScheme.onPrimaryContainer),
                  ),
                  child: Center(
                    child: Text(
                      'Male',
                      style: TextStyle(
                          fontSize: 18.sp,
                          color: Theme.of(context).colorScheme.primary),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
