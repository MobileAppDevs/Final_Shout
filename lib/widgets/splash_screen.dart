import 'package:final_shout/widgets/comman_widget.dart';
import 'package:flutter/material.dart';

class splashScreen extends StatefulWidget {
  splashScreen({Key? key}) : super(key: key);

  @override
  State<splashScreen> createState() => _nameState();
}

class _nameState extends State<splashScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(children: [
             const SizedBox(height: 50),
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
