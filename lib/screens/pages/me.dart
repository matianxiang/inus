import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MePage extends StatefulWidget {
  const MePage({super.key});

  @override
  State<MePage> createState() => _MePageState();
}

class _MePageState extends State<MePage> {
  Future<void> resetPrefs() async {
      final prefs = await SharedPreferences.getInstance();
      prefs.setBool('hasLoadedBoardingScreen', false);
    }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: ElevatedButton(
          child: const Text('重置key'),
          onPressed: () => {resetPrefs()},
        )
    );
  }
}