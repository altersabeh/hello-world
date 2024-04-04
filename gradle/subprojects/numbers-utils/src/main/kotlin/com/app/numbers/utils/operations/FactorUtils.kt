package com.app.numbers.utils.operations

import java.math.BigInteger
import kotlin.random.Random

object FactorUtils {
    fun factor(n: BigInteger): List<BigInteger> {
        val factors = mutableListOf<BigInteger>()
        val max = n.toLong()

        for (i in 1..max) {
            val divisor = BigInteger.valueOf(i)
            if (n.mod(divisor) == BigInteger.ZERO) {
                factors.add(divisor)
            }
        }

        return factors
    }

    fun factorRandom(): String {
        val randomNum = Random.nextInt(1, 26)
        val factors = factor(BigInteger.valueOf(randomNum.toLong()))
        return "Factor[$randomNum] = $factors"
    }

    fun primeFactor(n: BigInteger): List<BigInteger> {
        if (n == BigInteger.ZERO) {
            return emptyList()
        }

        val primeFactors = mutableListOf<BigInteger>()
        var num = n
        val two = BigInteger.valueOf(2)

        while (num.mod(two) == BigInteger.ZERO) {
            primeFactors.add(two)
            num = num.divide(two)
        }

        var i = 3L
        while (BigInteger.valueOf(i * i) <= num) {
            val divisor = BigInteger.valueOf(i)
            while (num.mod(divisor) == BigInteger.ZERO) {
                primeFactors.add(divisor)
                num = num.divide(divisor)
            }
            i += 2
        }

        if (num > BigInteger.ONE) {
            primeFactors.add(num)
        }

        return primeFactors
    }

    fun primeFactorRandom(): String {
        val randomNum = Random.nextInt(1, 26)
        val primeFactors = primeFactor(BigInteger.valueOf(randomNum.toLong()))
        return "PFactor[$randomNum] = $primeFactors"
    }
}
