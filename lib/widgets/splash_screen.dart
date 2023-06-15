import 'package:final_shout/widgets/comman_widget.dart';
import 'package:final_shout/widgets/notification_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen> {
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
                child: const Icon(Icons.notification_add)),
          )
        ]),
        body: Column(children: [
          const SizedBox(height: 40),
          Center(child: Image.asset("assets/images/final_shout.png")),
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Row(
              children: [
                Comman.customButton(onPressed: () {}, text: 'Screen 1', backgroundColor: Colors.red),
                const SizedBox(width: 50),
                Comman.customButton(onPressed: () {}, text: 'Screen 2', backgroundColor: Colors.yellow),
              ],
            ),
          ),
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Row(
              children: [
                Comman.customButton(onPressed: () {}, text: 'Screen 3', backgroundColor: Colors.blue),
                const SizedBox(width: 50),
                Comman.customButton(onPressed: () {}, text: 'Screen 4', backgroundColor: Colors.grey),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
