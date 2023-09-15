import 'package:final_shout/widgets/first_screen.dart';
import 'package:final_shout/widgets/forth_screen.dart';

import 'package:final_shout/widgets/second_screen.dart';
import 'package:final_shout/widgets/home_screen.dart';
import 'package:final_shout/widgets/third_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TabBarScreen extends StatefulWidget {
  const TabBarScreen({Key? key}) : super(key: key);

  @override
  State<TabBarScreen> createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen> {
  int bottomNavIndex = 2;
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
              _onTap(2);
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
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            onTap: (index) => _onTap(index),
            currentIndex: bottomNavIndex,
            selectedFontSize: 12,
            unselectedFontSize: 12,
            iconSize: 25,
            selectedItemColor: const Color(0xffF4A42A),
            unselectedItemColor: const Color(0xff77778E),
            selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
            unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Image.asset("assets/images/VIDEO-ON-DEMAND.png",
                      height: 35, width: 35),
                  label: 'Counseling'),
              BottomNavigationBarItem(
                  icon: Image.asset("assets/images/contact.png",
                      height: 35, width: 35),
                  label: 'Contact'),
              BottomNavigationBarItem(
                icon: Icon(
                  iconList[2],
                  color: Colors.white,
                  size: 25,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                  icon: Image.asset("assets/images/DONATE-NOW.png",
                      height: 35, width: 35),
                  label: 'Donate'),
              BottomNavigationBarItem(
                  icon: Image.asset("assets/images/logoo-live-2.png",
                      height: 35, width: 35),
                  label: 'Shows')
            ],
          )),
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
      return const FirstScreen();
    case 1:
      return const SecondScreen();
    case 2:
      return const HomeScreen();
    case 3:
      return const ThirdScreen();
    case 4:
      return const ForthScreen();
    default:
      return const HomeScreen();
  }
}
