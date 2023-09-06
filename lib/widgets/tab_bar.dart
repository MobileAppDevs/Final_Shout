import 'package:final_shout/widgets/first_screen.dart';
import 'package:final_shout/widgets/forth_screen.dart';

import 'package:final_shout/widgets/second_screen.dart';
import 'package:final_shout/widgets/home_screen.dart';
import 'package:final_shout/widgets/third_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class TabBarScreen extends StatefulWidget {
  const TabBarScreen({Key? key}) : super(key: key);

  @override
  State<TabBarScreen> createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen> {
  int bottomNavIndex = 0;
  final iconList = <IconData>[
    Icons.home,
    Icons.favorite_outline,
    Icons.dashboard_rounded,
    Icons.settings,
    Icons.holiday_village
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            _onTap(0);
          },
          elevation: 0,
          backgroundColor: Colors.transparent,
          child: CircleAvatar(
            radius: 30,
            backgroundColor: Colors.orange,
            child: SvgPicture.asset(
              'assets/images/home_icn.svg',
              color: Colors.white,
            ),
          ),
        ),

        // SvgPicture.asset('assets/images/home_icn.svg', height: 70)),
        body: _getPage(bottomNavIndex),
        extendBody: true,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          padding: const EdgeInsets.only(right: 10, left: 10),
          // color: Colors.white.withOpacity(0.8),
          // shape: const CircularNotchedRectangle(), //shape of notch
          // notchMargin: 0,
          color: Colors.white.withOpacity(0.8),
          child: SizedBox(
            height: Get.height * 0.06,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Column(
                      children: [
                        IconButton(
                          padding: EdgeInsets.zero,
                          icon: Image.asset("assets/images/VIDEO-ON-DEMAND.png",
                              height: 25, width: 25),
                          color: bottomNavIndex == 1
                              ? const Color(0xffF4A42A)
                              : const Color(0xff77778E),
                          onPressed: () {
                            _onTap(1);
                          },
                        ),
                      ],
                    ),
                    const Positioned(
                        left: 3, top: 37, child: Text("Counseling"))
                  ],
                ),
                SizedBox(
                  width: Get.height * 0.03,
                ),
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Column(
                      children: [
                        IconButton(
                          icon: Image.asset("assets/images/contact.png",
                              height: 25, width: 25),
                          color: bottomNavIndex == 2
                              ? const Color(0xffF4A42A)
                              : const Color(0xff77778E),
                          onPressed: () {
                            _onTap(2);
                          },
                        ),
                      ],
                    ),
                    const Positioned(left: 6, top: 37, child: Text("Contact"))
                  ],
                ),
                SizedBox(width: Get.height * 0.03),
                SizedBox(width: Get.height * 0.03),
                Stack(
                  children: [
                    Column(
                      children: [
                        IconButton(
                          icon: Image.asset("assets/images/DONATE-NOW.png",
                              height: 25, width: 25),
                          color: bottomNavIndex == 3
                              ? const Color(0xffF4A42A)
                              : const Color(0xff77778E),
                          onPressed: () {
                            _onTap(3);
                          },
                        ),
                      ],
                    ),
                    const Positioned(left: 2, top: 37, child: Text("Donate"))
                  ],
                ),
                SizedBox(
                  width: Get.height * 0.025,
                ),
                Stack(
                  children: [
                    Column(
                      children: [
                        IconButton(
                          icon: Image.asset("assets/images/logoo-live-2.png",
                              height: 25, width: 25),
                          color: bottomNavIndex == 4
                              ? const Color(0xffF4A42A)
                              : const Color(0xff77778E),
                          onPressed: () {
                            _onTap(4);
                          },
                        ),
                      ],
                    ),
                    const Positioned(left: 6, top: 37, child: Text("Shows"))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _onTap(int index) {
    setState(() {
      bottomNavIndex = index;
    });
  }
}

Widget _getPage(int page) {
  switch (page) {
    case 0:
      return const HomeScreen();
    case 1:
      return const FirstScreen();
    case 2:
      return const SecondScreen();
    case 3:
      return const ThirdScreen();
    case 4:
      return const ForthScreen();
    default:
      return const HomeScreen();
  }
}
