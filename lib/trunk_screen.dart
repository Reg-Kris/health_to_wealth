import 'package:flutter/material.dart';
import 'package:health_to_wealth/base_screen.dart';

class TrunkScreen extends BaseScreen {
  const TrunkScreen({Key? key}) : super(key: key);

  @override
  Widget buildScreenContents(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.brown,
      body: Center(
        child: Text('Trunk Screen',
            style: TextStyle(fontSize: 24, color: Colors.white)),
      ),
    );
  }
}
