import 'package:chinese_font_library/chinese_font_library.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPage1 extends StatelessWidget {
  const IntroPage1({super.key});

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
                  child: Lottie.asset('assets/lotties/online-diagnosis.json')),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                child: Text(
                  '咨询检查报告？🤓',
                  style: const TextStyle(
                    color: Color.fromARGB(255, 61, 178, 69),
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontFamily: AutofillHints.addressCity
                  ).useSystemChineseFont(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Text(
                  '权威机构、著名医院、顶尖医生...',
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
                  '想看的，想问的，想了解的...',
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
