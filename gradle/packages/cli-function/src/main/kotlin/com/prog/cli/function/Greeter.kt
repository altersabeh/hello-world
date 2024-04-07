package com.prog.cli.function

import com.prog.goodbye.world.printGoodbye
import com.prog.hello.world.printGreeting

object Greeter {
    /**
     * # `main`
     *
     * This function is entry point of the application.
     */
    @JvmStatic
    fun main(args: Array<String>) {
        println("===================================================")
        printWelcomeMessage(args)
        printGoodbyeMessage(args)
        println("===================================================")
    }

    /**
     * # `printWelcomeMessage`
     *
     * This function prints the welcome message by calling the `printGreeting`
     * function.
     */
    fun printWelcomeMessage(args: Array<String>) {
        println(printGreeting(args))
    }

    /**
     * # `printGoodbyeMessage`
     *
     * This function prints the goodbye message by calling the `printGoodbye`
     * function.
     */
    fun printGoodbyeMessage(args: Array<String>) {
        System.err.println(printGoodbye(args))
    }
}
