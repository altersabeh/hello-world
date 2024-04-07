package com.prog.cli.function

import com.prog.goodbye.world.printBanner

object Banner {
    /**
     * # `main`
     *
     * This function is entry point of the application.
     */
    @JvmStatic
    fun main(args: Array<String>) {
        println("===================================================")
        printBannerMessage()
        println("===================================================")
    }

    /**
     * # `printBannerMessage`
     *
     * This function prints the banner message by calling the `printBanner`
     * function.
     */
    fun printBannerMessage() {
        println(printBanner())
    }
}
