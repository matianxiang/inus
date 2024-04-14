// 导入material库
import 'package:flutter/material.dart';
import 'package:inus/screens/first.dart';
import 'package:inus/screens/home.dart';
import 'package:inus/screens/login.dart';
import 'package:inus/screens/onboarding.dart';

// 应用程序入口点
void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // SharedPreferences prefs = await SharedPreferences.getInstance();
  // bool hasLoadedBoardingScreen = prefs.getBool('hasLoadBoardingScreen') ?? false;
  // 接受一个Widget作为参数，并将其渲染到屏幕，这里MainApp是应用程序的根Widget
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/boarding-screen': (context) => const OnBoardingScreen(),
        '/home': (context) => const HomeScreen(),
        '/login': (context) => const LoaginScreen(),
      },
      home: const FirstScreen(),
    );
  }
}
