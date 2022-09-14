import 'package:dotidoti_app/presentation/helper/constants.dart';
import 'package:dotidoti_app/presentation/screens/intro/intro.dart';
import 'package:dotidoti_app/presentation/widgets/default_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

// List<MyClass> selecteditems = List();
class _SplashScreenState extends State<SplashScreen> {
  final int _numPages = 3;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kWhite,
        body: AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.dark,
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
              child: Column(children: [
                Container(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () => Get.off(() => const IntroScreen()),
                    child: const Text(
                      'Skip',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.h),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    SizedBox(
                      height: 400.h,
                      child: PageView(
                        physics: const ClampingScrollPhysics(),
                        controller: _pageController,
                        onPageChanged: (int page) {
                          setState(() {
                            _currentPage = page;
                          });
                        },
                        children: <Widget>[
                          page1(),
                          page2(),
                          page3(),
                        ],
                      ),
                    ),
                    SizedBox(height: 60.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: _buildPageIndicator(),
                    ),
                    SizedBox(height: 20.h),
                    _currentPage != _numPages - 1
                        ? Padding(
                            padding: const EdgeInsets.only(
                              left: (5.0),
                              right: (5),
                              // top: (2)
                            ),
                            child: DefaultBtn(
                                press: () {
                                  _pageController.nextPage(
                                    duration: const Duration(milliseconds: 500),
                                    curve: Curves.ease,
                                  );
                                },
                                text: 'Next'),
                          )
                        : Container(),
                    _currentPage == _numPages - 1
                        ? Padding(
                            padding: const EdgeInsets.only(
                              left: (5.0),
                              right: (5),
                              // bottom: (4)
                            ),
                            child: DefaultBtn(
                                press: () {
                                  Get.offAll(() => const IntroScreen());
                                },
                                text: 'Get Started'),
                          )
                        : Container(),
                  ],
                ),
              ]),
            ),
          ),
        ));
  }

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      height: 6.0,
      width: isActive ? 20.0 : 14.0,
      decoration: BoxDecoration(
        color: isActive ? kPrimary : const Color(0xFF9595B7),
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
    );
  }
}

Widget page1() {
  return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          height: (8),
        ),
        SvgPicture.asset(
          'assets/vector/on boarding  1.svg',
          height: 150.h,
        ),
        SizedBox(
          height: 85.h,
        ),

        Text(
          'Book a service',
          style: TextStyle(
              fontSize: 22.sp, fontWeight: FontWeight.bold, color: kPrimary),
        ),
        SizedBox(
          height: 10.h,
        ),

        Text(
          'Book a pick-up service from \n our variety of companies',
          style: TextStyle(fontSize: 16.sp, color: Colors.grey),
        ),

        // Container(decoration: BoxDecoration)
      ]);
}

Widget page2() {
  return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          height: (9),
        ),
        Center(
            child: SvgPicture.asset(
          'assets/vector/on boarding  2.svg',
          height: 150.h,
        )),
        SizedBox(
          height: 85.h,
        ),

        Text(
          'Set your location',
          style: TextStyle(
              fontSize: 22.sp, fontWeight: FontWeight.bold, color: kPrimary),
        ),

        SizedBox(height: 10.h),

        const Text(
          'Enable location sharing so that your \n nearbly driver can see where you are',
          style: TextStyle(fontSize: 16, color: Colors.grey),
        ),

        // Container(decoration: BoxDecoration)
      ]);
}

Widget page3() {
  return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 30.h,
        ),
        Center(
            child: Padding(
          padding: const EdgeInsets.only(bottom: 20.0),
          child: SvgPicture.asset(
            'assets/vector/on boarding  3.svg',
            height: 150.h,
          ),
        )),
        SizedBox(
          height: 85.h,
        ),
        Text(
          'Confirm Your Driver',
          style: TextStyle(
              fontSize: 22.sp, fontWeight: FontWeight.bold, color: kPrimary),
        ),
        SizedBox(height: 10.h),
        Text(
          'Huge drivers network helps you find\n comfortable, safe and cheap ride ',
          style: TextStyle(fontSize: 16.sp, color: Colors.grey),
        ),
      ]);
}
