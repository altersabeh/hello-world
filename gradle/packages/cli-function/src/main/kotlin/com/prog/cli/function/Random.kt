package com.prog.cli.function

import com.prog.numbers.utils.operations.FactorialUtils.factorialRandom
import com.prog.numbers.utils.operations.FibonacciUtils.fibonacciRandom

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
