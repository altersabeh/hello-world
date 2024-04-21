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
     * This function is used to print the banner message by calling the
     * `printBanner` function.
     *
     * __Example:__
     *
     * ```kotlin
     * import com.prog.cli.function.Banner.printBannerMessage
     * printBannerMessage()
     * ```
     */
    fun printBannerMessage() {
        println(printBanner())
    }
}
