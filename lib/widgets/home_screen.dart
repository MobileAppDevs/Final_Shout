import 'package:final_shout/widgets/channel1.dart';
import 'package:final_shout/widgets/channel2.dart';
import 'package:final_shout/widgets/channel3.dart';
import 'package:final_shout/widgets/channel4.dart';
import 'package:final_shout/widgets/channel5.dart';
import 'package:final_shout/widgets/comman_widget.dart';
import 'package:final_shout/widgets/notification_screen.dart';
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
        appBar: AppBar(actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: InkWell(
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
          )
        ]),
        body: Column(children: [
          const SizedBox(height: 20),
          Center(
              child: Image.asset(
            "assets/images/logo.jpg",
            height: 170,
            width: 170,
          )),
          const Expanded(child: SizedBox()),
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
                  text: 'Channel 1',
                  backgroundColor: Colors.white,
                  image: "assets/images/1-icon.png"),
              Comman.customButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Channel2()),
                    );
                  },
                  text: 'Channel 2',
                  backgroundColor: Colors.white,
                  image: "assets/images/2-icon.png"),
              Comman.customButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Channel3()),
                    );
                  },
                  text: 'Channel 3',
                  backgroundColor: Colors.white,
                  image: "assets/images/3-icon.png"),
            ],
          ),
          const SizedBox(
            height: 20,
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
                text: 'Channel 4',
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
                  text: 'Channel 5',
                  backgroundColor: Colors.white,
                  image: "assets/images/5-icon.png"),
            ],
          ),
          const Expanded(child: SizedBox()),
        ]),
      ),
    );
  }

  onClick() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const Channel1()),
    );
  }
}
