package com.prog.numbers.utils.operations

import java.math.BigInteger
import kotlin.random.Random

object FactorialUtils {
    /**
     * # `factorial`
     *
     * This function calculates the factorial of a given number.
     *
     * __Arguments:__
     *
     * * `n: Int` - The number to calculate the factorial
     *
     * __Return:__
     *
     * * `BigInteger` - The factorial of the given number
     *
     * __Example:__
     *
     * ```kotlin
     * import com.prog.numbers.utils.operations.FactorialUtils.factorial
     * val fact = factorial(5)
     * println("Fact[5] = $fact")
     * ```
     *
     * __Output:__
     *
     * ```kotlin
     * "Fact[5] = 120"
     * ```
     */
    fun factorial(n: Int): BigInteger {
        var fact = BigInteger.ONE

        for (i in 1..n) {
            fact *= BigInteger.valueOf(i.toLong())
        }

        return fact
    }

    /**
     * # `factorialRandom`
     *
     * This function generates a random number and calculates its factorial.
     *
     * __Return:__
     *
     * * `String` - The factorial of the random number
     *
     * __Example:__
     *
     * ```kotlin
     * import com.prog.numbers.utils.operations.FactorialUtils.factorialRandom
     * val fact = factorialRandom()
     * println(fact)
     * ```
     *
     * __Output:__
     *
     * ```kotlin
     * "Fact[5] = 120"
     * ```
     */
    fun factorialRandom(): String {
        val rng = Random
        val randomNum = rng.nextInt(1, 26)
        val fact = factorial(randomNum)

        return "Fact[$randomNum] = $fact"
    }
}
