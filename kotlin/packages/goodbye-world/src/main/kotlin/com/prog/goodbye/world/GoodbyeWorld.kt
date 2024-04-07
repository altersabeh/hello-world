package com.prog.goodbye.world

/**
 * # `printGoodbye`
 *
 * This function prints a goodbye message to the console. If the user provides a name as an
 * argument, the function will print a goodbye message with the provided name. If no argument is
 * provided, the function will print a generic goodbye message.
 *
 * __Arguments:__
 *
 * * `args: Array<String>` - An array of strings that may contain the user's name.
 *
 * __Return:__
 *
 * * `String` - A goodbye message.
 *
 * __Example:__
 *
 * ```kotlin
 * import com.prog.hello.world.printGoodbye
 * println(printGoodbye(arrayOf()))
 * println(printGoodbye(arrayOf("John", "Doe")))
 * ```
 *
 * __Output:__
 *
 * ```kotlin
 * "Goodbye World from Kotlin !"
 * "Goodbye John Doe from Kotlin !"
 * ```
 */
fun printGoodbye(args: Array<String>): String {
    return if (args.isNotEmpty()) {
        val name = args.drop(0).joinToString(" ")
        "Goodbye $name from Kotlin !"
    } else {
        "Goodbye World from Kotlin !"
    }
}

/**
 * # `printBanner`
 *
 * This function prints a banner to the console.
 *
 * __Return:__
 *
 * * String` - A banner string.
 *
 * __Example:__
 *
 * ```kotlin
 * import com.prog.hello.world.printBanner
 * println(printBanner())
 * ```
 */
fun printBanner(): String {
    return """
        |
        |     ▄████ ██▀███  ▄▄▄     ▓█████▄ ██▓   ▓█████
        |    ██▒ ▀█▓██ ▒ ██▒████▄   ▒██▀ ██▓██▒   ▓█   ▀
        |   ▒██░▄▄▄▓██ ░▄█ ▒██  ▀█▄ ░██   █▒██░   ▒███
        |   ░▓█  ██▒██▀▀█▄ ░██▄▄▄▄██░▓█▄   ▒██░   ▒▓█  ▄
        |   ░▒▓███▀░██▓ ▒██▒▓█   ▓██░▒████▓░██████░▒████▒
        |    ░▒   ▒░ ▒▓ ░▒▓░▒▒   ▓▒█░▒▒▓  ▒░ ▒░▓  ░░ ▒░ ░
        |     ░   ░  ░▒ ░ ▒░ ▒   ▒▒ ░░ ▒  ▒░ ░ ▒  ░░ ░  ░
        |   ░ ░   ░  ░░   ░  ░   ▒   ░ ░  ░  ░ ░     ░
        |         ░   ░          ░  ░  ░       ░  ░  ░  ░
        |                            ░
        |
        """.trimMargin()
}
