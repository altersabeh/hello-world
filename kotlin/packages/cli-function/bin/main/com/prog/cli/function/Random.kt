package com.prog.cli.function

import com.prog.numbers.utils.operations.FactorialUtils.factorialRandom
import com.prog.numbers.utils.operations.FibonacciUtils.fibonacciRandom

object Random {
    /**
     * # `main`
     *
     * This function is the entry point of the application.
     *
     * __Arguments:__
     */
    @JvmStatic
    fun main(args: Array<String>) {
        println("===================================================")
        printRandomNumbers()
        println("===================================================")
    }

    /**
     * # `printRandomNumbers`
     *
     * This function prints random fibonacci and factorial by calling the
     * `fibonacciRandom` and `factorialRandom` functions respectively.
     */
    fun printRandomNumbers() {
        println(fibonacciRandom())
        println(factorialRandom())
    }
}
