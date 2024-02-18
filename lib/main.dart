import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'cloud_screen.dart';
import 'sun_screen.dart';
import 'trunk_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Example',
      home: const HomeScreen(), // Set HomeScreen as the home route
      // Define the routes
      routes: {
        '/cloud_screen': (context) => const CloudScreen(),
        '/sun_screen': (context) => const SunScreen(),
        '/trunk_screen': (context) => const TrunkScreen(),
      },
    );
  }
}
