package com.app.cli.function

import com.app.hello.world.printDate
import com.app.translator.translate

object Details {
    @JvmStatic
    fun main(args: Array<String>) {
        println("===================================================")
        printUserDetails(args)
        println("===================================================")
    }

    private fun getUserName(args: Array<String>): String {
        return if (args.size <= 1) {
            print("Please enter your name : ")
            readLine()!!.trim()
        } else {
            args.sliceArray(1 until args.size).joinToString(" ")
        }
    }

    private fun getUserLanguage(): String {
        print("Please enter your language : ")
        return readLine()!!.trim()
    }

    fun printUserDetails(args: Array<String>) {
        val name = getUserName(args)
        val language = getUserLanguage()
        println(translate(language, name))
        println(printDate())
    }
}
