import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:shared_preferences/shared_preferences.dart';

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
  double scaleCenter = 1.0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Future<void> resetPrefs() async {
      final prefs = await SharedPreferences.getInstance();
      prefs.setBool('hasLoadedBoardingScreen', false);
    }

    return PopScope(
        // 禁用左滑返回
        canPop: false,
        child: Scaffold(
          bottomNavigationBar: SafeArea(
            child: Container(
              height: 56,
              padding: const EdgeInsets.symmetric(horizontal: 24),
              margin: const EdgeInsets.symmetric(horizontal: 24),
              decoration: BoxDecoration(
                  color: bottomNavBgColor,
                  borderRadius: const BorderRadius.all(Radius.circular(24)),
                  boxShadow: [
                    BoxShadow(
                        color: bottomNavBgColor.withOpacity(0.5),
                        offset: const Offset(0, 20),
                        blurRadius: 20)
                  ]),
              child: Row(children: [
                Expanded(
                    flex: 1,
                    child: GestureDetector(
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
                                width: 24,
                                height: 24,
                                child: Icon(
                                  CupertinoIcons.house,
                                  color: activeIndex == 0
                                      ? Colors.white
                                      : Colors.white60,
                                  size: 24,
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
                    child: GestureDetector(
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
                                width: 24,
                                height: 24,
                                child: Icon(
                                  CupertinoIcons.tv,
                                  color: activeIndex == 1
                                      ? Colors.white
                                      : Colors.white60,
                                  size: 24,
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
                    child: GestureDetector(
                        onTap: () => {
                              setState(() {
                                scaleCenter = 1.4;
                              }),
                              Timer.periodic(Durations.medium1, (timer) {
                                setState(() {
                                  scaleCenter = 1;
                                });
                                timer.cancel();
                              })
                            },
                        child: AnimatedScale(
                            scale: scaleCenter,
                            duration: Durations.medium1,
                            child: Container(
                              margin: const EdgeInsets.fromLTRB(12, 14, 12, 14),
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.horizontal(
                                    left: Radius.circular(12),
                                    right: Radius.circular(12)),
                                color: Color.fromARGB(255, 27, 124, 52),
                              ),
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    CupertinoIcons.add,
                                    color: Colors.white,
                                    size: 24,
                                  ),
                                ],
                              ),
                            )))),
                Expanded(
                    flex: 1,
                    child: GestureDetector(
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
                                width: 24,
                                height: 24,
                                child: Icon(
                                  CupertinoIcons.wand_rays,
                                  color: activeIndex == 2
                                      ? Colors.white
                                      : Colors.white60,
                                  size: 24,
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
                    child: GestureDetector(
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
                                width: 24,
                                height: 24,
                                child: Icon(
                                  CupertinoIcons.person,
                                  color: activeIndex == 3
                                      ? Colors.white
                                      : Colors.white60,
                                  size: 24,
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
          ),
          body: Container(
            alignment: Alignment.center,
            child: ElevatedButton(
              child: const Text('重置key'),
              onPressed: () => {resetPrefs()},
            ),
          ),
        ));
  }
}
