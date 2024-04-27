import 'package:flutter/material.dart';
import 'package:inus/constants/constants.dart';
import 'package:inus/screens/intro_page/intro_page1.dart';
import 'package:inus/screens/intro_page/intro_page2.dart';
import 'package:inus/screens/intro_page/intro_page3.dart';
import 'package:inus/screens/intro_page/intro_page4.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  // controller to keeo track of which page we're on
  final _controller = PageController();

  // keep track of if we are on the last page or not
  bool onLastPage = false;

  Future<void> _handleTap() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool('hasLoadedBoardingScreen', true);
    if(!mounted) return;
    Navigator.pushNamed(context, '/home');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        // Stack是Flutter中用于堆叠多个子组件的组件，类似于Web开发中的绝对定位布局。Stack允许子组件堆叠在一起，并且可以使用Positioned来控制子组件的位置。
        children: [
          PageView(
            // PageView组件是Flutter中用于显示多个页面（或者说是子组件）的组件，用户可以通过左右滑动来切换页面。
            controller: _controller,
            onPageChanged: (index) => {
              setState(() {
                onLastPage = (index == 3);
              })
            },
            children: const [IntroPage1(), IntroPage2(), IntroPage3(), IntroPage4()],
          ),
          // dot indicators
          Container(
              alignment: const Alignment(0, 0.75),
              child: Row(
                // mainAxisAlignment是Row和Column等布局组件的一个属性，用于控制子组件在主轴（水平方向对于Row，垂直方向对于Column）上的排列方式。
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // GestureDetector是Flutter中用于识别用户手势操作的组件，它可以包裹其他任意的Flutter小部件，并且可以识别用户的点击、双击、长按、拖动等手势操作。
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/home');
                      // _controller.previousPage(
                      //     duration: const Duration(milliseconds: 500),
                      //     curve: Curves.easeIn);
                    },
                    child: const Text(
                      '跳过',
                      style: TextStyle(
                          color: Constants.highLightThemeColor,
                          fontSize: 16.0),
                    ),
                  ),
                  SmoothPageIndicator(
                    controller: _controller,
                    count: 4,
                    effect: const ExpandingDotsEffect(
                      activeDotColor: Constants.highLightThemeColor,
                    ),
                  ),

                  !onLastPage
                      ? GestureDetector(
                          onTap: () {
                            _controller.nextPage(
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.easeIn);
                          },
                          child: const Text(
                            '下一页',
                            style: TextStyle(
                                color: Constants.highLightThemeColor,
                                fontSize: 16.0),
                          ),
                        )
                      : GestureDetector(
                          onTap: () {
                            _handleTap();
                          },
                          child: const Text(
                            '进入',
                            style: TextStyle(
                                color: Constants.highLightThemeColor,
                                fontSize: 16.0),
                          ),
                        ),
                ],
              ))
        ],
      ),
    );
  }
}
