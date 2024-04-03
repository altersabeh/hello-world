package com.app.cli.function

import com.app.numbers.utils.factorialRandom
import com.app.numbers.utils.fibonacciRandom

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
