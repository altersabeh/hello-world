package com.prog.cli.function

import com.prog.hello.world.printDate
import com.prog.translator.translate

object Details {
    /**
     * # `main`
     *
     * This function is entry point of the application.
     *
     * __Arguments:__
     *
     * * `args: Array<String>` - Command line arguments
     */
    @JvmStatic
    fun main(args: Array<String>) {
        println("===================================================")
        printUserDetails(args)
        println("===================================================")
    }

    /**
     * # `getUserName`
     *
     * This function prompts the user to enter their name and returns the input
     *
     * __Arguments:__
     *
     * * `args: Array<String>` - Command line arguments
     *
     * __Return:__
     *
     * * `String` - The user's name
     *
     * __Example:__
     *
     * ```kotlin
     * import com.prog.cli.function.Details.getUserName
     * val name = getUserName(arrayOf("John", "Doe"))
     * println(name)
     * ```
     *
     * __Output:__
     *
     * ```kotlin
     * "John Doe"
     * ```
     */
    private fun getUserName(args: Array<String>): String {
        return if (args.isEmpty()) {
            print("Please enter your name : ")
            readLine()!!.trim()
        } else {
            args.joinToString(" ")
        }
    }

    /**
     * # `getUserLanguage`
     *
     * This function prompts the user to enter their language and returns the
     * input.
     *
     * __Return:__
     *
     * `String` - The user's language
     *
     * __Example:__
     *
     * ```kotlin
     * import com.prog.cli.function.Details.getUserLanguage
     * val language = getUserLanguage()
     * println(language)
     * ```
     */
    private fun getUserLanguage(): String {
        print("Please enter your language : ")
        return readLine()!!.trim()
    }

    /**
     * # `printUserDetails`
     *
     * This function prints the user's name and the current date. It also prints
     * the translated message based on the user's language. The user's name and
     * language are obtained from the command line arguments and user input using
     * the `getUserName` and `getUserLanguage` functions.
     *
     * __Arguments:__
     *
     * * `Array<String>` - Command line arguments
     *
     * __Example:__
     *
     * ```kotlin
     * import com.prog.cli.function.Details.printUserDetails
     * printUserDetails(arrayOf("John", "Doe"))
     * ```
     */
    fun printUserDetails(args: Array<String>) {
        val name = getUserName(args)
        val language = getUserLanguage()
        println(translate(language, name))
        println(printDate())
    }
}
