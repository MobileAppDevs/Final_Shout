import 'package:flutter/material.dart';

class Comman {
  static customButton({required String text, required backgroundColor, required String image, required Function onPressed}) {
    return SizedBox(
      width: 110,
      height: 105,
      child: ElevatedButton(
        onPressed: () {
          onPressed();
        },
        style: ElevatedButton.styleFrom(
          shadowColor: Colors.grey.withOpacity(0.9),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          backgroundColor: backgroundColor, // Set the button's background color
          textStyle: const TextStyle(color: Colors.white), // Set the button's text color
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 12.0),
          child: Column(
            children: [
              Image.asset(image),
              const SizedBox(height: 4),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    text,
                    style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: Colors.black),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  static customresizeButton({required String text, required Function onPressed, required backgroundColor, required String image}) {
    return SizedBox(
      width: 155,
      height: 100,
      child: ElevatedButton(
        onPressed: () {
          onPressed();
        },
        style: ElevatedButton.styleFrom(
          shadowColor: Colors.grey.withOpacity(0.9),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          backgroundColor: backgroundColor, // Set the button's background color
          textStyle: const TextStyle(color: Colors.white), // Set the button's text color
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 12.0),
          child: Column(
            children: [
              Image.asset(
                image,
                height: 50,
                width: 50,
              ),
              const SizedBox(height: 4),
              Text(
                text,
                style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: Colors.black),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // static customContainer() {
  //   const SizedBox(
  //     height: 50,
  //     width: 100,
  //   );
  // }
}
