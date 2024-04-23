import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:inus/constants/constants.dart';
import 'package:inus/widgets/custom_tab_indicator.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  Future<void> resetPrefs() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool('hasLoadedBoardingScreen', false);
  }

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: 3, vsync: this); // 假设有三个选项卡 this关联TickerProvider
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TabBar(
          overlayColor: MaterialStateProperty.resolveWith(
              (states) => Colors.transparent), // 去除tab波纹效果
          dividerHeight: 0,
          isScrollable: true,
          tabAlignment: TabAlignment.center,
          indicatorColor: Constants.themeColor,
          indicator: const CustomUnderlineTabIndicator(),
          indicatorWeight: 1,
          indicatorSize: TabBarIndicatorSize.label,
          indicatorPadding: const EdgeInsets.only(bottom: 10),
          labelColor: Constants.themeColor,
          labelStyle: const TextStyle(
            fontWeight: FontWeight.w600,
          ),
          unselectedLabelColor: Colors.black45,
          unselectedLabelStyle: const TextStyle(
            fontWeight: FontWeight.normal,
          ),
          controller: _tabController,
          tabs: const [
            Tab(
              child: Text(
                '关注',
                style: TextStyle(fontSize: 16),
              ),
            ),
            Tab(
              child: Text('发现', style: TextStyle(fontSize: 16)),
            ),
            Tab(child: Text('上海', style: TextStyle(fontSize: 16)))
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(
              CupertinoIcons.search,
              size: 28,
              color: Constants.themeColor,
            ),
            onPressed: () => {},
          )
        ],
        // backgroundColor: Constants.themeColor,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            CupertinoIcons.bars,
            size: 28,
            color: Constants.themeColor,
          ),
          onPressed: () => {},
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(0.1),
          child: Container(
            color: Colors.black,
            height: 0.1,
          ),
        ), // PreferredSizeWidget 是一个抽象类，用于指定 Widget 的首选尺寸。它通常用于需要提供固定尺寸的自定义 Widget，比如自定义的 AppBar、BottomNavigationBar 等。
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Container(
            alignment: Alignment.center,
            color: Colors.amberAccent,
            child: const Text(
              '关注',
              style: TextStyle(color: Colors.white),
            ),
          ),
          Container(
            color: Colors.blue,
            alignment: Alignment.center,
            child: const Text('发现', style: TextStyle(color: Colors.white)),
          ),
          Container(
            color: Colors.brown,
            alignment: Alignment.center,
            child: const Text('上海', style: TextStyle(color: Colors.white)),
          )
        ],
      ),
    );
  }
}
