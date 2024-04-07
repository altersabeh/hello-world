package com.prog.cli.function

import com.prog.hello.world.printDate
import com.prog.translator.translate

object Details {
    /**
     * # `main`
     *
     * This function is entry point of the application.
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
     * as a string.
     *
     * The function prints a message to the console, reads a line of
     * input from the user and returns the result.
     *
     * __Return:__
     *
     * The user's name as a string.
     */
    private fun getUserName(args: Array<String>): String {
        return if (args.size <= 1) {
            print("Please enter your name : ")
            readLine()!!.trim()
        } else {
            args.sliceArray(1 until args.size).joinToString(" ")
        }
    }

    /**
     * # `getUserLanguage`
     *
     * This function prompts the user to enter their language and returns the
     * input as a string.
     *
     * The function prints a message to the console, reads a line of input from
     * the user and returns the result.
     *
     * __Return:__
     *
     * The user's language as a string.
     */
    private fun getUserLanguage(): String {
        print("Please enter your language : ")
        return readLine()!!.trim()
    }

    /**
     * # `printUserDetails`
     *
     * This function prints the user's name and the current date.
     *
     * The user's name is obtained by calling the `getUserName` function. The
     * user's language is obtained by calling the `getUserLanguage` function.
     * The translated message is printed by calling the `translate` function.
     */
    fun printUserDetails(args: Array<String>) {
        val name = getUserName(args)
        val language = getUserLanguage()
        println(translate(language, name))
        println(printDate())
    }
}
