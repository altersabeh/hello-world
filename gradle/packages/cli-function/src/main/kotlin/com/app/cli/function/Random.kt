package com.app.cli.function

import com.app.numbers.lib.factorialRandom
import com.app.numbers.lib.fibonacciRandom

object Random {
    @JvmStatic
    fun main(args: Array<String>) {
        println("===================================================")
        printRandomNumbers()
        println("===================================================")
    }

    fun printRandomNumbers() {
        println(fibonacciRandom())
        println(factorialRandom())
    }
}
