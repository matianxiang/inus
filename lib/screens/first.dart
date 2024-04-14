import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  void initState() {
    super.initState();
    _loadHasLoadBoardingScreenFlag();
  }

  Future<void> _loadHasLoadBoardingScreenFlag() async {
    final prefs = await SharedPreferences.getInstance();
    bool hasLoadedBoardingScreen =
    prefs.getBool('hasLoadedBoardingScreen') ?? false;
    if (hasLoadedBoardingScreen) {
      if(!mounted) return;
      Navigator.of(context).pushNamed('/home');
    } else {
      if(!mounted) return;
      Navigator.of(context).pushNamed('/boarding-screen');
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
