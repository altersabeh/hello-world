package com.app.cli.function

import com.app.goodbye.world.printBanner

object Banner {
    @JvmStatic
    fun main(args: Array<String>) {
        println("===================================================")
        printBannerMessage()
        println("===================================================")
    }

    fun printBannerMessage() {
        println(printBanner())
    }
}
