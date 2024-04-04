package com.prog.numbers.utils.operations

import java.math.BigInteger
import kotlin.random.Random

object FibonacciUtils {
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

    fun fibonacciRandom(): String {
        val rng = Random
        val randomNum = rng.nextInt(1, 51)
        val fib = fibonacci(randomNum)

        return "Fib[$randomNum] = $fib"
    }
}
