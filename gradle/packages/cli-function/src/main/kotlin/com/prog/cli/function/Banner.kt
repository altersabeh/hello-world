package com.prog.cli.function

import com.prog.goodbye.world.printBanner

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
