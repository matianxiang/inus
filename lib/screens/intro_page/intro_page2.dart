import 'package:chinese_font_library/chinese_font_library.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPage2 extends StatelessWidget {
  const IntroPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      // Load a Lottie file from your assets
      children: [
        Expanded(
          flex: 3,
          child: Column(
            children: [
              Expanded(
                  child: Lottie.asset('assets/lotties/online-doctor.json')),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                child: Text(
                  '想要线上问诊？🤗',
                  style: const TextStyle(
                    color: Color.fromARGB(255, 248, 126, 173),
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontFamily: AutofillHints.addressCity
                  ).useSystemChineseFont(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Text(
                  '来自全国各地的主任医生,',
                  style: const TextStyle(
                    color: Color.fromARGB(255, 1, 76, 137),
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ).useSystemChineseFont(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 4),
                child: Text(
                  '在线解决你的问题!',
                  style: const TextStyle(
                    color: Color.fromARGB(255, 1, 76, 137),
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ).useSystemChineseFont(),
                ),
              )
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(),
        )
      ],
    );
  }
}
