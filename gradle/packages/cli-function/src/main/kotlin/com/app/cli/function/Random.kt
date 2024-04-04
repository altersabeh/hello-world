package com.app.cli.function

import com.app.numbers.utils.operations.FactorialUtils.factorialRandom
import com.app.numbers.utils.operations.FibonacciUtils.fibonacciRandom

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
