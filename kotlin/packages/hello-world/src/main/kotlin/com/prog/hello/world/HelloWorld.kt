package com.prog.hello.world

import org.apache.commons.lang3.time.DateFormatUtils

/**
 * # `GREETING`
 *
 * A constant string that contains a greeting message.
 *
 * __Example:__
 * ```kotlin
 * import com.prog.hello.world.GREETING
 *
 * println(GREETING) // Hello, Kotlin's Here !
 * ```
 * __Output:__
 * ```kotlin
 * "Hello, Kotlin's Here !"
 * ```
 */
const val GREETING = "Hello, Kotlin's Here !"

/**
 * # `printGreeting`
 *
 * This function returns a greeting message. If the function is called with arguments, it will
 * return a greeting message with the name provided in the arguments. If no arguments are provided,
 * it will return a generic greeting message.
 *
 * __Arguments:__
 *
 * * `args: Array<String>` - An array of strings that contain the user's name.
 *
 * __Return:__
 *
 * * `String` - A greeting message.
 *
 * __Example:__
 *
 * ```kotlin
 * import com.prog.hello.world.printGreeting
 * println(printGreeting(arrayOf()))
 * println(printGreeting(arrayOf("John", "Doe")))
 * ```
 *
 * __Output:__
 *
 * ```kotlin
 * "Hello World from Kotlin !"
 * "Hello John Doe from Kotlin !"
 * ```
 */
fun printGreeting(args: Array<String>): String {
    return if (args.isNotEmpty()) {
        val name = args.drop(0).joinToString(" ")
        "Hello $name from Kotlin !"
    } else {
        "Hello World from Kotlin !"
    }
}

/**
 * # `printDate`
 *
 * This function returns the current date in a formatted string. The date is in the format "MMMM dd,
 * yyyy 'at' hh:mm a".
 *
 * __Return:__
 *
 * * `String` - The formatted date string.
 *
 * __Example:__
 *
 * ```kotlin
 * import com.prog.hello.world.printDate
 * println(printDate())
 * ```
 *
 * __Output:__
 *
 * ```kotlin
 * "Today is July 22, 2011 at 12:30 PM"
 * ```
 */
fun printDate(): String {
    val currentDate = System.currentTimeMillis()
    val format = "MMMM dd, yyyy 'at' hh:mm a"
    val formattedDate = DateFormatUtils.format(currentDate, format)
    return "Today is $formattedDate"
}
