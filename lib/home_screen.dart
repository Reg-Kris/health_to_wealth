import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          // Background image
          Positioned.fill(
            child: Image.asset(
              'assets/images/homeScreen.png', // Make sure this matches the new asset's path
              fit: BoxFit.cover,
            ),
          ),
          // Invisible button for CloudScreen
          Positioned(
            top: 0,
            left: 0,
            child: GestureDetector(
              onTap: () => Navigator.pushNamed(context, '/cloud_screen'),
              behavior: HitTestBehavior.translucent,
              child: Container(
                color: Colors.transparent, // Invisible
                width: 100, // Adjust the size to the cloud area
                height: 100, // Adjust the size to the cloud area
              ),
            ),
          ),
          // Invisible button for SunScreen
          Positioned(
            top: 0,
            right: 0,
            child: GestureDetector(
              onTap: () => Navigator.pushNamed(context, '/sun_screen'),
              behavior: HitTestBehavior.translucent,
              child: Container(
                color: Colors.transparent, // Invisible
                width: 100, // Adjust the size to the sun area
                height: 100, // Adjust the size to the sun area
              ),
            ),
          ),
          // Invisible button for TrunkScreen
          Positioned(
            bottom: 100, // Adjust based on where the trunk is located
            left: 50, // Adjust based on where the trunk is located
            child: GestureDetector(
              onTap: () => Navigator.pushNamed(context, '/trunk_screen'),
              behavior: HitTestBehavior.translucent,
              child: Container(
                color: Colors.transparent, // Invisible
                width: 200, // Adjust the size to the trunk area
                height: 100, // Adjust the size to the trunk area
              ),
            ),
          ),
        ],
      ),
    );
  }
}
