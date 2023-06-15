import 'package:flutter/material.dart';

class Comman {



  static customButton({required String text, required onPressed, required backgroundColor}) {
    return SizedBox(width: 130,height: 70,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor:backgroundColor, // Set the button's background color
          textStyle: const TextStyle(color: Colors.white), // Set the button's text color
        ),
        child: Text(text),
      ),
    );
  }

  static customContainer(){
    const SizedBox(height: 50,width: 100,);
  }


}
