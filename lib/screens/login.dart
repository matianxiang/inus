import 'package:flutter/material.dart';

class LoaginScreen extends StatelessWidget {
  const LoaginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        alignment: Alignment.center,
        child: GestureDetector(
          onTap: () {
            // Navigator.pushNamed(context, '/boarding-screen');
          },
          child: const Text('登录页'),
        ),
      ),
    );
  }
}
