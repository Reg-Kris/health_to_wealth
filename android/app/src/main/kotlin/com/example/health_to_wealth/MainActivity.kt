package com.example.health_to_wealth

import HealthDataFetcher
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext

class MainActivity: FlutterActivity() {
    private val CHANNEL = "com.example.health_to_wealth.health_data_channel"

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL).setMethodCallHandler { call, result ->
            if (call.method == "getTodayStepCount") {
                // Launch a coroutine
                CoroutineScope(Dispatchers.IO).launch {
                    try {
                        val healthDataFetcher = HealthDataFetcher(context)
                        // Assuming you have initialized HealthConnectClient somewhere
                        val stepCount = healthDataFetcher.fetchTodayStepCount()
                        // You must switch back to the main thread to interact with the result
                        withContext(Dispatchers.Main) {
                            result.success(stepCount)
                        }
                    } catch (e: Exception) {
                        withContext(Dispatchers.Main) {
                            result.error("UNAVAILABLE", "Failed to fetch step count", null)
                        }
                    }
                }
            } else {
                result.notImplemented()
            }
        }
    }
}
