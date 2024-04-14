import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';

const Color bottomNavBgColor = Color.fromARGB(255, 61, 178, 69);

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int activeIndex = 0;

  @override
  void initState() {
    super.initState();
    // 自定义state
  }

  @override
  Widget build(BuildContext context) {
    Future<void> resetPrefs() async {
      final prefs = await SharedPreferences.getInstance();
      prefs.setBool('hasLoadedBoardingScreen', false);
    }

    return Scaffold(
      bottomNavigationBar: SafeArea(
        child: Container(
          height: 56,
          padding: const EdgeInsets.fromLTRB(24, 6, 24, 0),
          margin: const EdgeInsets.fromLTRB(24, 0, 24, 4),
          decoration: BoxDecoration(
              color: bottomNavBgColor,
              borderRadius: const BorderRadius.all(Radius.circular(24)),
              boxShadow: [
                BoxShadow(
                    color: bottomNavBgColor.withOpacity(0.5),
                    offset: const Offset(0, 20),
                    blurRadius: 20)
              ]),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            GestureDetector(
                onTap: () => {
                      setState(() {
                        activeIndex = 0;
                      })
                    },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 24,
                      height: 24,
                      child: Icon(
                        CupertinoIcons.house,
                        color: activeIndex == 0 ? Colors.white : Colors.white60,
                      ),
                    ),
                    Text(
                      '社区',
                      style: TextStyle(
                        fontSize: 12,
                        color: activeIndex == 0 ? Colors.white : Colors.white60,
                      ),
                    )
                  ],
                )),
            GestureDetector(
                onTap: () => {
                      setState(() {
                        activeIndex = 1;
                      })
                    },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 24,
                      height: 24,
                      child: Icon(
                        CupertinoIcons.tv,
                        color: activeIndex == 1 ? Colors.white : Colors.white60,
                      ),
                    ),
                    Text(
                      '频道',
                      style: TextStyle(
                        fontSize: 12,
                        color: activeIndex == 1 ? Colors.white : Colors.white60,
                      ),
                    )
                  ],
                )),
            GestureDetector(
                onTap: () => {
                      setState(() {
                        activeIndex = 2;
                      })
                    },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 24,
                      height: 24,
                      child: Icon(
                        CupertinoIcons.wand_rays,
                        color: activeIndex == 2 ? Colors.white : Colors.white60,
                      ),
                    ),
                    Text(
                      '服务',
                      style: TextStyle(
                        fontSize: 12,
                        color: activeIndex == 2 ? Colors.white : Colors.white60,
                      ),
                    )
                  ],
                )),
            GestureDetector(
                onTap: () => {
                      setState(() {
                        activeIndex = 3;
                      })
                    },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 24,
                      height: 24,
                      child: Icon(
                        CupertinoIcons.person,
                        color: activeIndex == 3 ? Colors.white : Colors.white60,
                      ),
                    ),
                    Text(
                      '我',
                      style: TextStyle(
                        fontSize: 12,
                        color: activeIndex == 3 ? Colors.white : Colors.white60,
                      ),
                    )
                  ],
                )),
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
    );
  }
}
