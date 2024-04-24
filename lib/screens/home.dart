import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:inus/constants/constants.dart';
import 'package:inus/screens/pages/home.dart';
import 'package:inus/screens/pages/me.dart';
import 'package:inus/screens/pages/message.dart';
import 'package:inus/screens/pages/service.dart';
import 'package:inus/screens/pages/tv.dart';

const Color bottomNavBgColor = Constants.themeColor;
const Color iconFillColor = Color.fromARGB(255, 34, 194, 58);
const Color iconColor = Color.fromARGB(255, 131, 131, 131);

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int activeIndex = 0;
  double scaleCenter = 1.0;

  @override
  void initState() {
    super.initState();
  }

  Widget _buildBody() {
    switch (activeIndex) {
      case 0:
        return const HomePage();
      case 1:
        return const TvPage();
      case 2:
        return const MessagePage();
      case 3:
        return const ServicePage();
      case 4:
        return const MePage();
      default:
        return const HomePage(); // 返回一个空容器作为默认情况
    }
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
        // 禁用左滑返回
        canPop: false,
        child: Scaffold(
          bottomNavigationBar: Container(
            height: 64,
            decoration: const BoxDecoration(
                border: Border(
                    top: BorderSide(
              color: Colors.black,
              width: 0.1,
            ))),
            child: Row(children: [
              Expanded(
                  flex: 1,
                  child: InkWell(
                      onTap: () => {
                            setState(() {
                              activeIndex = 0;
                            })
                          },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                              width: 36,
                              height: 8,
                              child: Container(
                                alignment: Alignment.topCenter,
                                decoration: BoxDecoration(
                                    border: Border(
                                        top: BorderSide(
                                            color: bottomNavBgColor,
                                            width: 2,
                                            style: activeIndex == 0
                                                ? BorderStyle.solid
                                                : BorderStyle.none))),
                              )),
                          SizedBox(
                            width: 22,
                            height: 22,
                            child: activeIndex == 0
                                ? const Icon(
                                    CupertinoIcons.house_fill,
                                    color: iconFillColor,
                                    size: 22,
                                  )
                                : const Icon(
                                    CupertinoIcons.house,
                                    color: iconColor,
                                    size: 22,
                                  ),
                          ),
                          Text(
                            '社区',
                            style: TextStyle(
                              fontSize: 10,
                              color:
                                  activeIndex == 0 ? iconFillColor : iconColor,
                            ),
                          )
                        ],
                      ))),
              Expanded(
                  flex: 1,
                  child: InkWell(
                      onTap: () => {
                            setState(() {
                              activeIndex = 1;
                            }),
                          },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                              width: 36,
                              height: 8,
                              child: Container(
                                alignment: Alignment.topCenter,
                                decoration: BoxDecoration(
                                    border: Border(
                                        top: BorderSide(
                                            color: bottomNavBgColor,
                                            width: 2,
                                            style: activeIndex == 1
                                                ? BorderStyle.solid
                                                : BorderStyle.none))),
                              )),
                          SizedBox(
                            width: 22,
                            height: 22,
                            child: Icon(
                              activeIndex == 1
                                  ? CupertinoIcons.tv_fill
                                  : CupertinoIcons.tv,
                              color:
                                  activeIndex == 1 ? iconFillColor : iconColor,
                              size: 22,
                            ),
                          ),
                          Text(
                            '频道',
                            style: TextStyle(
                              fontSize: 10,
                              color:
                                  activeIndex == 1 ? iconFillColor : iconColor,
                            ),
                          )
                        ],
                      ))),
              Expanded(
                flex: 1,
                child: GestureDetector(
                  onTap: () => {
                    setState(() {
                      scaleCenter = 1.2;
                    }),
                    Timer.periodic(Durations.medium1, (timer) {
                      setState(() {
                        scaleCenter = 1.0;
                      });
                      timer.cancel();
                    })
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      AnimatedScale(
                        scale: scaleCenter,
                        duration: Durations.medium1,
                        child: SizedBox(
                          width: 44,
                          child: Container(
                            margin: const EdgeInsets.only(top: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14),
                              color: Constants.themeColor,
                            ),
                            child: const Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 32,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                  flex: 1,
                  child: InkWell(
                      onTap: () => {
                            setState(() {
                              activeIndex = 3;
                            }),
                          },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                              width: 36,
                              height: 8,
                              child: Container(
                                alignment: Alignment.topCenter,
                                decoration: BoxDecoration(
                                    border: Border(
                                        top: BorderSide(
                                            color: bottomNavBgColor,
                                            width: 2,
                                            style: activeIndex == 3
                                                ? BorderStyle.solid
                                                : BorderStyle.none))),
                              )),
                          SizedBox(
                            width: 22,
                            height: 22,
                            child: Icon(
                              activeIndex == 3
                                  ? CupertinoIcons.bell_fill
                                  : CupertinoIcons.bell,
                              color:
                                  activeIndex == 3 ? iconFillColor : iconColor,
                              size: 22,
                            ),
                          ),
                          Text(
                            '通知',
                            style: TextStyle(
                              fontSize: 10,
                              color:
                                  activeIndex == 3 ? iconFillColor : iconColor,
                            ),
                          )
                        ],
                      ))),
              Expanded(
                  flex: 1,
                  child: InkWell(
                      onTap: () => {
                            setState(() {
                              activeIndex = 4;
                            }),
                          },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                              width: 36,
                              height: 8,
                              child: Container(
                                alignment: Alignment.topCenter,
                                decoration: BoxDecoration(
                                    border: Border(
                                        top: BorderSide(
                                            color: bottomNavBgColor,
                                            width: 2,
                                            style: activeIndex == 4
                                                ? BorderStyle.solid
                                                : BorderStyle.none))),
                              )),
                          SizedBox(
                            width: 22,
                            height: 22,
                            child: Icon(
                              activeIndex == 4
                                  ? CupertinoIcons.person_alt_circle_fill
                                  : CupertinoIcons.person_alt_circle,
                              color:
                                  activeIndex == 4 ? iconFillColor : iconColor,
                              size: 22,
                            ),
                          ),
                          Text(
                            '我',
                            style: TextStyle(
                              fontSize: 10,
                              color:
                                  activeIndex == 4 ? iconFillColor : iconColor,
                            ),
                          )
                        ],
                      ))),
            ]),
          ),
          body: _buildBody(),
        ));
  }
}
