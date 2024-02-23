import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lovechat/core/theme/color_schemes.g.dart';
import 'package:lovechat/presentation/auth/auth_page.dart';
import 'package:lovechat/presentation/auth/gender/gender_selection_screen.dart';
import 'package:lovechat/presentation/auth/login/login_screen.dart';
import 'package:lovechat/presentation/auth/register/register_screen.dart';
import 'package:lovechat/presentation/main_screens/chat_screen.dart';
import 'package:lovechat/presentation/main_screens/home_screen.dart';
import 'package:lovechat/presentation/main_screens/matching_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
            theme: ThemeData(useMaterial3: true, colorScheme: lightColorScheme),
            darkTheme:
                ThemeData(useMaterial3: true, colorScheme: darkColorScheme),
            home: MatchingScreen());
      },
    );
  }
}
