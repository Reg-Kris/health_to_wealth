import 'package:flutter/material.dart';
import 'package:health_to_wealth/base_screen.dart';

class CloudScreen extends BaseScreen {
  const CloudScreen({Key? key}) : super(key: key);

  @override
  Widget buildScreenContents(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Text('Cloud Screen',
            style: TextStyle(fontSize: 24, color: Colors.white)),
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
        backgroundColor: Colors.white, // Change the background color to white
        child: const Icon(Icons.arrow_back, color: Colors.black),
      ),
    );
  }
}
