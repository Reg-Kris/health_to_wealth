import 'package:flutter/material.dart';

import 'base_screen.dart'; // Make sure you import the base_screen.dart

class SunWalker extends BaseScreen {
  const SunWalker({Key? key}) : super(key: key);

  @override
  Widget buildScreenContents(BuildContext context) {
    // This is the content specific to the SunWalker screen.
    return Stack(
      children: <Widget>[
        Image.asset('assets/images/sun_background.png',
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
            alignment: Alignment.center),
        Align(
          alignment: Alignment.center, // Align the container to the center
          child: Container(
            width: 300, // Adjust the width as needed
            height: 300, // Adjust the height as needed
            padding: const EdgeInsets.all(20),
            decoration: const BoxDecoration(
              color: Colors.red,
              shape: BoxShape.rectangle, // Maintain the rectangle shape
              // borderRadius: BorderRadius.circular(12), // Uncomment for rounded corners
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset('assets/images/walker_icon.png',
                    scale: 1.5), // Adjust the scale to fit your design
                const Text(
                  'WALKER',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
                const Text(
                  'Description of this category',
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
                const Text(
                  'Status: Activated', // This will be dynamic in future iterations
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Future functionality for button
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white, // Text color
                    backgroundColor: Colors.green, // Button background color
                  ),
                  child: const Text('ACTIVATED'),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget buildBackButton(BuildContext context) {
    // Override the back button specifically for CloudScreen
    return Positioned(
      bottom: 20,
      left: 20,
      child: FloatingActionButton(
        onPressed: () => Navigator.of(context).pop(),
        backgroundColor: Colors.green, // Change the background color to white
        child: const Icon(Icons.arrow_back, color: Colors.black),
      ),
    );
  }
}
