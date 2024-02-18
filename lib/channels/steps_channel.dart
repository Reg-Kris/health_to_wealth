import 'package:flutter/services.dart';

class HealthDataService {
  static const platform =
      MethodChannel('com.example.health_to_wealth.health_data_channel');

  Future<double> getTodayStepCount() async {
    try {
      final double stepCount = await platform.invokeMethod('getTodayStepCount');
      return stepCount;
    } on PlatformException catch (e) {
      // Handle the exception from the platform channel communication
      print("Failed to get step count: '${e.message}'.");
      return 0.0;
    }
  }
}
