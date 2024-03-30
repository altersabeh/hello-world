package hello

import org.apache.commons.lang3.time.DateFormatUtils

fun printGreeting(args: Array<String>): String {
    return if (args.isNotEmpty()) {
        val name = args.drop(0).joinToString(" ")
        "Hi $name, greetings from Gradle !"
    } else {
        "Hello World from Gradle !"
    }
}

fun printDate(): String {
    val currentDate = System.currentTimeMillis()
    val format = "MMMM dd, yyyy HH:mm"
    val formattedDate = DateFormatUtils.format(currentDate, format)
    return "Today is $formattedDate"
}
