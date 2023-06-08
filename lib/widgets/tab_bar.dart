import 'package:final_shout/widgets/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TabBarScreen extends StatefulWidget {
  const TabBarScreen({Key? key}) : super(key: key);

  @override
  State<TabBarScreen> createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen> {
  int _bottomNavIndex = 0;

  final iconList = <IconData>[
    Icons.home,
    Icons.favorite_outline,
    Icons.dashboard_rounded,
    Icons.settings,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      // backgroundColor: Colors.transparent,
      // floatingActionButton: FloatingActionButton(
      //     onPressed: () async {
      //       Navigator.push<bool>(context, MaterialPageRoute(builder: (context) => splashScreen())).then((value) {
      //         if (value ?? false) {}
      //       });
      //     },
      //     child: const Icon(Icons.home),
      //     backgroundColor: Colors.transparent),
      body: _getPage(_bottomNavIndex),
      // extendBody: true,
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        //bottom navigation bar on scaffold
         color: Colors.white.withOpacity(0.8),
        // shape: const CircularNotchedRectangle(), //shape of notch
        // notchMargin: 10, //notche margin between floating button and bottom appbar
        child: SizedBox(
          // height: Get.height * 0.06,
          child: Row(
            //children inside bottom appbar
            // mainAxisSize: MainAxisSize.max,
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              SizedBox(width: Get.width * 0.05),
              Column(
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.favorite_outline,
                    ),
                    color: _bottomNavIndex == 1 ? const Color(0xffF4A42A) : const Color(0xff77778E),
                    onPressed: () {
                      _onTap(0);
                    },
                  ),
                ],
              ),
              SizedBox(width: Get.width * 0.09),
              IconButton(
                icon: const Icon(Icons.favorite),
                color: _bottomNavIndex == 1 ? const Color(0xffF4A42A) : const Color(0xff77778E),
                onPressed: () {
                  _onTap(01);
                },
              ),
              SizedBox(width: Get.width * 0.09),
              Column(
                children: [
                  IconButton(
                    icon: const Icon(Icons.dashboard_rounded),
                    color: _bottomNavIndex == 1 ? const Color(0xffF4A42A) : const Color(0xff77778E),
                    onPressed: () {
                      _onTap(2);
                    },
                  ),
                ],
              ),
              SizedBox(width: Get.width * 0.09),
              IconButton(
                icon: const Icon(Icons.settings),
                color: _bottomNavIndex == 1 ? const Color(0xffF4A42A) : const Color(0xff77778E),
                onPressed: () {
                  _onTap(3);
                },
              ),
            
            ],
          ),
        ),
      ),
    );
  }
}

Widget _getPage(int page) {
  switch (page) {
    case 0:
      return splashScreen();
    case 1:
      return Container();
    case 2:
      return Container();
    case 3:
      return Container();
    default:
      return Container();
  }
}

void _onTap(int index) {}
