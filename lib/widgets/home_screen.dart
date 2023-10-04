import 'package:final_shout/widgets/Teen.dart';
import 'package:final_shout/widgets/channel1.dart';
import 'package:final_shout/widgets/channel2.dart';
import 'package:final_shout/widgets/channel3.dart';
import 'package:final_shout/widgets/channel4.dart';
import 'package:final_shout/widgets/channel5.dart';
import 'package:final_shout/widgets/comman_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'notification_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _SplashScreen();
}

class _SplashScreen extends State<HomeScreen> {
  @override
  @override
  Widget build(BuildContext context) {
    // SystemChrome.setPreferredOrientations([DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);

    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff00BFFF),
        body: SingleChildScrollView(
          child: SizedBox(
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.only(top: 8.0, right: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const NotificationScreen()),
                        );
                      },
                      child: Image.asset(
                        "assets/images/support.png",
                        height: 45,
                        width: 45,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25),
              Center(
                  child: Image.asset(
                "assets/images/logoSA.png",
                height: 170,
                width: 170,
              )),
              const SizedBox(
                height: 60,
              ),
              // const Expanded(child: SizedBox()),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Comman.customButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Channel1()),
                        );
                      },
                      text: "Final Shout's",
                      text2: "Family",
                      backgroundColor: Colors.white,
                      image: "assets/images/1-icon.png"),
                  Comman.customButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Channel2()),
                        );
                      },
                      text: "Final Shout's",
                      text2: "Children",
                      backgroundColor: Colors.white,
                      image: "assets/images/2-icon.png"),
                  Comman.customButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const TeenPage()),
                      );
                    },
                    text: "Final Shout's",
                    text2: " Teen",
                    backgroundColor: Colors.white,
                    image: "assets/images/6-icon.png",
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Comman.customButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Channel3()),
                        );
                      },
                      text: "Final Shout's",
                      text2: " Youth",
                      backgroundColor: Colors.white,
                      image: "assets/images/3-icon.png"),
                  Comman.customButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Channel4()),
                        );
                      },
                      text: "Final Shout's",
                      text2: " Health",
                      backgroundColor: Colors.white,
                      image: "assets/images/4-icon.png"),
                  Comman.customButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Channel5()),
                        );
                      },
                      text: "Final Shout's",
                      text2: " Landscape",
                      backgroundColor: Colors.white,
                      image: "assets/images/5-icon.png"),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              // const Expanded(child: SizedBox()),
            ]),
          ),
        ),
      ),
    );
  }
}
