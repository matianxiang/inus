import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:inus/screens/pages/home.dart';
import 'package:inus/screens/pages/me.dart';
import 'package:inus/screens/pages/service.dart';
import 'dart:async';

import 'package:inus/screens/pages/tv.dart';

const Color bottomNavBgColor = Color.fromARGB(255, 61, 178, 69);

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int activeIndex = 0;
  double scale1 = 1.0;
  double scale2 = 1.0;
  double scale3 = 1.0;
  double scale4 = 1.0;

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
        return const ServicePage();
      case 3:
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
              height: 72,
              padding: const EdgeInsets.only(bottom: 16),
              decoration: const BoxDecoration(
                  color: bottomNavBgColor,
                  ),
              child: Row(children: [
                Expanded(
                    flex: 1,
                    child: InkWell(
                        onTap: () => {
                              setState(() {
                                activeIndex = 0;
                                scale1 = 1.4;
                              }),
                              Timer.periodic(Durations.medium1, (timer) {
                                setState(() {
                                  scale1 = 1;
                                });
                                timer.cancel();
                              })
                            },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            AnimatedScale(
                              scale: scale1,
                              duration: Durations.medium1,
                              child: SizedBox(
                                width: 28,
                                height: 28,
                                child: Icon(
                                  CupertinoIcons.house,
                                  color: activeIndex == 0
                                      ? Colors.white
                                      : Colors.white60,
                                  size: 28,
                                ),
                              ),
                            ),
                            Text(
                              '社区',
                              style: TextStyle(
                                fontSize: 12,
                                color: activeIndex == 0
                                    ? Colors.white
                                    : Colors.white60,
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
                                scale2 = 1.4;
                              }),
                              Timer.periodic(Durations.medium1, (timer) {
                                setState(() {
                                  scale2 = 1;
                                });
                                timer.cancel();
                              })
                            },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            AnimatedScale(
                              scale: scale2,
                              duration: Durations.medium1,
                              child: SizedBox(
                                width: 28,
                                height: 28,
                                child: Icon(
                                  CupertinoIcons.tv,
                                  color: activeIndex == 1
                                      ? Colors.white
                                      : Colors.white60,
                                  size: 28,
                                ),
                              ),
                            ),
                            Text(
                              '频道',
                              style: TextStyle(
                                fontSize: 12,
                                color: activeIndex == 1
                                    ? Colors.white
                                    : Colors.white60,
                              ),
                            )
                          ],
                        ))),
                Expanded(
                    flex: 1,
                    child: InkWell(
                        onTap: () => {
                              setState(() {
                                activeIndex = 2;
                                scale3 = 1.4;
                              }),
                              Timer.periodic(Durations.medium1, (timer) {
                                setState(() {
                                  scale3 = 1;
                                });
                                timer.cancel();
                              })
                            },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            AnimatedScale(
                              scale: scale3,
                              duration: Durations.medium1,
                              child: SizedBox(
                                width: 28,
                                height: 28,
                                child: Icon(
                                  CupertinoIcons.wand_rays,
                                  color: activeIndex == 2
                                      ? Colors.white
                                      : Colors.white60,
                                  size: 28,
                                ),
                              ),
                            ),
                            Text(
                              '服务',
                              style: TextStyle(
                                fontSize: 12,
                                color: activeIndex == 2
                                    ? Colors.white
                                    : Colors.white60,
                              ),
                            )
                          ],
                        ))),
                Expanded(
                    flex: 1,
                    child: InkWell(
                        onTap: () => {
                              setState(() {
                                activeIndex = 3;
                                scale4 = 1.4;
                              }),
                              Timer.periodic(Durations.medium1, (timer) {
                                setState(() {
                                  scale4 = 1;
                                });
                                timer.cancel();
                              })
                            },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            AnimatedScale(
                              scale: scale4,
                              duration: Durations.medium1,
                              child: SizedBox(
                                width: 28,
                                height: 28,
                                child: Icon(
                                  CupertinoIcons.person,
                                  color: activeIndex == 3
                                      ? Colors.white
                                      : Colors.white60,
                                  size: 28,
                                ),
                              ),
                            ),
                            Text(
                              '我',
                              style: TextStyle(
                                fontSize: 12,
                                color: activeIndex == 3
                                    ? Colors.white
                                    : Colors.white60,
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
