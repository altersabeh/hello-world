package com.app.hello.world

import org.apache.commons.lang3.time.DateFormatUtils

fun printGreeting(args: Array<String>): String {
    return if (args.isNotEmpty()) {
        val name = args.drop(0).joinToString(" ")
        "Hello $name from Gradle !"
    } else {
        "Hello World from Gradle !"
    }
}

fun printDate(): String {
    val currentDate = System.currentTimeMillis()
    val format = "MMMM dd, yyyy 'at' hh:mm a"
    val formattedDate = DateFormatUtils.format(currentDate, format)
    return "Today is $formattedDate"
}
