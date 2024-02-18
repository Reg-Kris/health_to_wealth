import 'package:flutter/material.dart';

abstract class BaseScreen extends StatelessWidget {
  const BaseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          buildScreenContents(context),
          if (Navigator.canPop(context)) buildBackButton(context),
        ],
      ),
    );
  }

  Widget buildScreenContents(BuildContext context);

  Widget buildBackButton(BuildContext context) {
    return Positioned(
      bottom: 20,
      left: 20,
      child: FloatingActionButton(
        onPressed: () => Navigator.of(context).pop(),
        backgroundColor: Colors.blue,
        child: const Icon(Icons.arrow_back, color: Colors.white),
      ),
    );
  }
}
