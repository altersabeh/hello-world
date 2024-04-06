package com.prog.hello.world

import org.apache.commons.lang3.time.DateFormatUtils

/**
 * # `GREETING` A constant string that contains a greeting message.
 *
 * __Example:__
 * ```kotlin
 * import com.prog.hello.world.printGreeting
 *
 * println(GREETING) // Hello, Gradle's Here !
 * ```
 * __Output:__
 * ```kotlin
 * "Hello, Gradle's Here !"
 * ```
 */
const val GREETING = "Hello, Gradle's Here !"

/**
 * # `printGreeting` This function prints a greeting. It takes a list of strings as an argument. If
 * the list is empty, it prints a default greeting. Otherwise, it prints a personalized greeting
 * using the strings in the list.
 *
 * __Signature:__
 * ```kotlin
 * fun printGreeting(args: Array<String>): String
 * ```
 * __Example:__
 * ```kotlin
 * import com.prog.hello.world.printGreeting
 *
 * fun main() {
 *     println(printGreeting(arrayOf()))
 *     println(printGreeting(arrayOf("John", "Doe")))
 * }
 * ```
 * __Output:__
 * ```kotlin
 * "Hello World from Kotlin !"
 * "Hello John Doe from Kotlin !"
 * ```
 */
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
