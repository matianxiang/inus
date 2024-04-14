import 'package:flutter/material.dart';

const Color bottomNavBgColor = Color.fromARGB(255, 61, 178, 69);

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState()=> _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  void initState() {
    super.initState();
    // 自定义state
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Content')
      ),
    );
  }
}