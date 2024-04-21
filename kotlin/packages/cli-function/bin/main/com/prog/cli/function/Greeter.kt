package com.prog.cli.function

import com.prog.goodbye.world.printGoodbye
import com.prog.hello.world.printGreeting

object Greeter {
    /**
     * # `main`
     *
     * This function is the entry point of the application.
     *
     * __Arguments:__
     *
     * * `args: Array<String>` - Command line arguments
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
     *
     * __Arguments:__
     *
     * * `args: Array<String>`
     */
    fun printWelcomeMessage(args: Array<String>) {
        println(printGreeting(args))
    }

    /**
     * # `printGoodbyeMessage`
     *
     * This function prints the goodbye message by calling the `printGoodbye`
     *
     * __Arguments:__
     *
     * * `args: Array<String>`
     */
    fun printGoodbyeMessage(args: Array<String>) {
        System.err.println(printGoodbye(args))
    }
}
