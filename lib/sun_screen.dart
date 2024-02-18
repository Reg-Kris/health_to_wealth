import 'package:flutter/material.dart';

import 'base_screen.dart';
import 'package:health_to_wealth/sun_walker.dart';

class SunScreen extends BaseScreen {
  const SunScreen({Key? key}) : super(key: key);

  @override
  Widget buildScreenContents(BuildContext context) {
    // This is the content specific to the SunScreen.
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/sun_background.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: IconButton(
          icon: Image.asset('assets/images/walker_icon.png'),
          iconSize: 100, // Adjust the size to fit your design
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SunWalker()),
            );
          },
        ),
      ),
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
