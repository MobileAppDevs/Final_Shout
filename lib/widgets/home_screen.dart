import 'package:final_shout/widgets/channel1.dart';
import 'package:final_shout/widgets/channel2.dart';
import 'package:final_shout/widgets/channel3.dart';
import 'package:final_shout/widgets/channel4.dart';
import 'package:final_shout/widgets/channel5.dart';
import 'package:final_shout/widgets/comman_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _SplashScreen();
}

class _SplashScreen extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.green.withOpacity(0.3),
        // appBar: AppBar(backgroundColor: Colors.green.withOpacity(0.3), actions: [
        //   Padding(
        //     padding: const EdgeInsets.only(right: 15.0),
        //     child: InkWell(
        //       onTap: () {
        //         Navigator.push(
        //           context,
        //           MaterialPageRoute(builder: (context) => const NotificationScreen()),
        //         );
        //       },
        //       child: Image.asset(
        //         "assets/images/support.png",
        //         height: 45,
        //         width: 45,
        //       ),
        //     ),
        //   )
        // ]),
        body: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 8.0, right: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => const NotificationScreen()),
                    // );
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
            "assets/images/logofinalshot.bin.png",
            height: 170,
            width: 170,
          )),
          const SizedBox(
            height: 80,
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
                  text2: "TV",
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
                  text2: "Kids",
                  backgroundColor: Colors.white,
                  image: "assets/images/2-icon.png"),
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
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Comman.customresizeButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Channel4()),
                  );
                },
                text: "Final Shout's",
                text2: " Health",
                backgroundColor: Colors.white,
                image: "assets/images/4-icon.png",
              ),
              Comman.customresizeButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Channel5()),
                    );
                  },
                  text: "Final Shout's",
                  text2: "Landscape",
                  backgroundColor: Colors.white,
                  image: "assets/images/5-icon.png"),
            ],
          ),
          const Expanded(child: SizedBox()),
        ]),
      ),
    );
  }
}
