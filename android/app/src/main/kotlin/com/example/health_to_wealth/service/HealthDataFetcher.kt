import android.content.Context
import androidx.health.connect.client.HealthConnectClient
import androidx.health.connect.client.records.StepsRecord
import androidx.health.connect.client.request.AggregateRequest
import androidx.health.connect.client.time.TimeRangeFilter
import java.time.LocalDate
import java.time.ZoneOffset

class HealthDataFetcher(private val context: Context) {

    suspend fun fetchTodayStepCount(): Double {

        val healthConnectClient = HealthConnectClient.getOrCreate(context)
        return try {
            // Define the time range for 'today'
            val startOfDay = LocalDate.now().atStartOfDay().toInstant(ZoneOffset.UTC)
            val endOfDay = LocalDate.now().plusDays(1).atStartOfDay().toInstant(ZoneOffset.UTC)

            // Create an aggregate request for the number of steps
            val response = healthConnectClient.aggregate(
                AggregateRequest(
                    metrics = setOf(StepsRecord.COUNT_TOTAL),
                    timeRangeFilter = TimeRangeFilter.between(startOfDay, endOfDay)
                )
            )

            // The result may be null if no data is available in the time range
            response[StepsRecord.COUNT_TOTAL]?.toDouble() ?: 0.0
        } catch (e: Exception) {
            println("error occurred: " + e.message)
            0.0
        }
    }

}
