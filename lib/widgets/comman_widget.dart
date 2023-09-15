import 'package:flutter/material.dart';

class Comman {
  static customButton(
      {required String text,
      required backgroundColor,
      required String image,
      required Function onPressed,
      required String text2}) {
    return Card(
      elevation: 40,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
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
          textStyle: const TextStyle(
              color: Colors.white), // Set the button's text color
        ),
        child: SizedBox(
          height: 120,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                image,
                height: 50,
                width: 50,
              ),
              const SizedBox(height: 5),
              Column(
                //  mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      textAlign: TextAlign.center,
                      text,
                      style: const TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    text2,
                    style: const TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  static customresizeButton(
      {required String text,
      required Function onPressed,
      required backgroundColor,
      required String image,
      required String text2}) {
    return SizedBox(
      width: 160,
      height: 125,
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
          textStyle: const TextStyle(
              color: Colors.white), // Set the button's text color
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
              const SizedBox(height: 5),
              Text(
                text,
                style: const TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              Text(
                text2,
                style: const TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
