// Hello World in Gradle !

package hello

import org.apache.commons.lang3.time.DateFormatUtils

fun printGreeting(args: Array<String>) {
    if (args.isNotEmpty()) {
        val name = args.drop(1).joinToString(" ")
        println("Hi $name, greetings from Gradle !")
    } else {
        println("Hello World from Gradle !")
    }
}

fun printDate() {
    val currentDate = System.currentTimeMillis()
    val format = "MMMM dd, yyyy HH:mm:ss"
    val formattedDate = DateFormatUtils.format(currentDate, format)
    println("Today is $formattedDate")
}

fun main(args: Array<String>) {
    printGreeting(args)
    printDate()
}
