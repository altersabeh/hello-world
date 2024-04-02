package com.app.cli.function

import com.app.goodbye.world.printGoodbye
import com.app.hello.world.printGreeting

object Greeter {
    @JvmStatic
    fun main(args: Array<String>) {
        println("===================================================")
        printWelcomeMessage(args)
        printGoodbyeMessage(args)
        println("===================================================")
    }

    fun printWelcomeMessage(args: Array<String>) {
        println(printGreeting(args))
    }

    fun printGoodbyeMessage(args: Array<String>) {
        System.err.println(printGoodbye(args))
    }
}
