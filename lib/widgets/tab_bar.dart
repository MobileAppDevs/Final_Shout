import 'package:final_shout/widgets/controller.dart';
import 'package:final_shout/widgets/first_screen.dart';
import 'package:final_shout/widgets/forth_screen.dart';

import 'package:final_shout/widgets/second_screen.dart';
import 'package:final_shout/widgets/splash_screen.dart';
import 'package:final_shout/widgets/third_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class TabBarScreen extends StatefulWidget {
  const TabBarScreen({Key? key}) : super(key: key);

  @override
  State<TabBarScreen> createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen> {
  int bottomNavIndex = 0;
  final iconList = <IconData>[Icons.home, Icons.favorite_outline, Icons.dashboard_rounded, Icons.settings, Icons.holiday_village];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,

      body: _getPage(bottomNavIndex),
      // extendBody: true,
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        //bottom navigation bar on scaffold
        color: Colors.white.withOpacity(0.8),
        // shape: const CircularNotchedRectangle(), //shape of notch
        // notchMargin: 10, //notche margin between floating button and bottom appbar
        child: SizedBox(
          height: Get.height * 0.06,
          child: Row(
            //children inside bottom appbar
            // mainAxisSize: MainAxisSize.max,
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              SizedBox(
                height: Get.height * 0.06,
              ),
              Column(
                children: [
                  IconButton(
                    icon: Icon(iconList[0]),
                    color: bottomNavIndex == 0 ? const Color(0xffF4A42A) : const Color(0xff77778E),
                    onPressed: () {
                      _onTap(0);
                    },
                  ),
                ],
              ),
              SizedBox(
                width: Get.height * 0.03,
              ),
              Column(
                children: [
                  IconButton(
                    icon: Icon(iconList[1]),
                    color: bottomNavIndex == 1 ? const Color(0xffF4A42A) : const Color(0xff77778E),
                    onPressed: () {
                      _onTap(1);
                    },
                  ),
                ],
              ),
              SizedBox(
                width: Get.height * 0.03,
              ),
              Column(
                children: [
                  IconButton(
                    icon: Icon(iconList[2]),
                    color: bottomNavIndex == 2 ? const Color(0xffF4A42A) : const Color(0xff77778E),
                    onPressed: () {
                      _onTap(2);
                    },
                  ),
                ],
              ),
              SizedBox(
                width: Get.height * 0.03,
              ),
              Column(
                children: [
                  IconButton(
                    icon: Icon(iconList[3]),
                    color: bottomNavIndex == 3 ? const Color(0xffF4A42A) : const Color(0xff77778E),
                    onPressed: () {
                      _onTap(3);
                    },
                  ),
                ],
              ),
              SizedBox(
                width: Get.height * 0.025,
              ),
              Column(
                children: [
                  IconButton(
                    icon: Icon(iconList[4]),
                    color: bottomNavIndex == 4 ? const Color(0xffF4A42A) : const Color(0xff77778E),
                    onPressed: () {
                      _onTap(4);
                    },
                  ),
                ],
              ),
            ],
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
      return const SplashScreen();
    case 1:
      return const FirstScreen();
    case 2:
      return const SecondScreen();
    case 3:
      return const ThirdScreen();
    case 4:
      return const ForthScreen();
    default:
      return const SplashScreen();
  }
}
