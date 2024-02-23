import 'package:camera/camera.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lovechat/core/constants/constants.dart';
import 'package:lovechat/presentation/auth/gender/widgets/camara.dart';

class GenderSelectionScreen extends StatefulWidget {
  const GenderSelectionScreen({super.key});

  @override
  State<GenderSelectionScreen> createState() => _GenderSelectionScreenState();
}

class _GenderSelectionScreenState extends State<GenderSelectionScreen> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      body: SafeArea(
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Tap to detect \nGender',
                  style: TextStyle(
                    fontSize: 35,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: height1,
                ),
                GestureDetector(
                  onTap: () async {
                    await availableCameras().then((value) => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => CameraScreen(cameras: value))));
                  },
                  child: CircleAvatar(
                      backgroundColor: Theme.of(context).colorScheme.primary,
                      radius: 100.r,
                      child: Stack(children: [
                        Center(
                            child: Icon(CupertinoIcons.viewfinder, size: 170)),
                        Center(
                          child: Icon(
                            Icons.face_2_rounded,
                            size: 90,
                          ),
                        ),
                      ])),
                ),
                SizedBox(
                  height: height1,
                ),
                Container(
                  height: 35.h,
                  width: 120.w,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
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
                          color:
                              Theme.of(context).colorScheme.primaryContainer),
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
