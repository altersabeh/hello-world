package com.prog.numbers.utils.operations

import java.math.BigInteger
import kotlin.random.Random

object FactorialUtils {
    fun factorial(n: Int): BigInteger {
        var fact = BigInteger.ONE

        for (i in 1..n) {
            fact *= BigInteger.valueOf(i.toLong())
        }

        return fact
    }

    fun factorialRandom(): String {
        val rng = Random
        val randomNum = rng.nextInt(1, 26)
        val fact = factorial(randomNum)

        return "Fact[$randomNum] = $fact"
    }
}
