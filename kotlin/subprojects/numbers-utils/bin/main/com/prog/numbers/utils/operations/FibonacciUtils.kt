package com.prog.numbers.utils.operations

import java.math.BigInteger
import kotlin.random.Random

object FibonacciUtils {
    /**
     * # `fibonacci`
     *
     * This function calculates the fibonacci number of a given number.
     *
     * __Arguments:__
     *
     * * `n: Int` - The number to calculate the fibonacci
     *
     * __Return:__
     *
     * * `BigInteger` - The fibonacci number of the given number
     *
     * __Example:__
     *
     * ```kotlin
     * import com.prog.numbers.utils.operations.FibonacciUtils.fibonacci
     * val fib = fibonacci(5)
     * println("Fib[5] = $fib")
     * ```
     *
     * __Output:__
     *
     * ```kotlin
     * "Fib[5] = 5"
     * ```
     */
    fun fibonacci(n: Int): BigInteger {
        var firstTerm = BigInteger.ZERO
        var secondTerm = BigInteger.ONE

        for (i in 0 until n) {
            val temp = firstTerm
            firstTerm = secondTerm
            secondTerm += temp
        }

        return firstTerm
    }

    /**
     * # `fibonacciRandom`
     *
     * This function generates a random number and calculates its fibonacci.
     *
     * __Return:__
     *
     * * `String` - The fibonacci of the random number
     *
     * __Example:__
     *
     * ```kotlin
     * import com.prog.numbers.utils.operations.FibonacciUtils.fibonacciRandom
     * val fib = fibonacciRandom()
     * println(fib)
     * ```
     *
     * __Output:__
     *
     * ```kotlin
     * "Fib[21] = 10946"
     * ```
     */
    fun fibonacciRandom(): String {
        val rng = Random
        val randomNum = rng.nextInt(1, 51)
        val fib = fibonacci(randomNum)

        return "Fib[$randomNum] = $fib"
    }
}
