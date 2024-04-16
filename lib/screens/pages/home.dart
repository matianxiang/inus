import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<void> resetPrefs() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool('hasLoadedBoardingScreen', false);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: ElevatedButton(
        child: const Text('社区'),
        onPressed: () => {resetPrefs()},
      ),
    );
  }
}
