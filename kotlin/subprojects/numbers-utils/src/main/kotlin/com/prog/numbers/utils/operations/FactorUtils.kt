package com.prog.numbers.utils.operations

import java.math.BigInteger
import kotlin.random.Random

object FactorUtils {
    /**
     * # `factor`
     *
     * This function calculates the factors of a given number.
     *
     * __Arguments:__
     *
     * * `num: BigInteger` - The number to calculate the factors
     *
     * __Return:__
     *
     * * `List<BigInteger>` - The factors of the given number
     *
     * __Example:__
     *
     * ```kotlin
     * import com.prog.numbers.utils.operations.FactorUtils.factor
     * val factors = factor(BigInteger.valueOf(324))
     * println("$factors")
     * ```
     *
     * __Output:__
     *
     * ```kotlin
     * "[1, 2, 3, 4, 6, 9, 12, 18, 27, 36, 54, 81, 108, 162, 324]"
     * ```
     */
    fun factor(num: BigInteger): List<BigInteger> {
        val factors = mutableListOf<BigInteger>()
        val max = num.toLong()

        for (i in 1..max) {
            val divisor = BigInteger.valueOf(i)
            if (num.mod(divisor) == BigInteger.ZERO) {
                factors.add(divisor)
            }
        }

        return factors
    }

    /**
     * # `factorRandom`
     *
     * This function generates a random number and calculates its factors.
     *
     * __Return:__
     *
     * * `String` - The factors of the random number
     *
     * __Example:__
     *
     * ```kotlin
     * import com.prog.numbers.utils.operations.FactorUtils.factorRandom
     * val factors = factorRandom()
     * println(factors)
     * ```
     *
     * __Output:__
     *
     * ```kotlin
     * "Factor[5] = [1, 5]"
     * ```
     */
    fun factorRandom(): String {
        val randomNum = Random.nextInt(1, 26)
        val factors = factor(BigInteger.valueOf(randomNum.toLong()))
        return "Factor[$randomNum] = $factors"
    }

    /**
     * # `primeFactor`
     *
     * This function calculates the prime factors of a given number.
     *
     * __Arguments:__
     *
     * * `num: BigInteger` - The number to calculate the prime factors
     *
     * __Return:__
     *
     * * `List<BigInteger>` - The prime factors of the given number
     *
     * __Example:__
     *
     * ```kotlin
     * import com.prog.numbers.utils.operations.FactorUtils.primeFactor
     * val primeFactors = primeFactor(BigInteger.valueOf(324))
     * println("$primeFactors")
     * ```
     *
     * __Output:__
     *
     * ```kotlin
     * "[2, 2, 3, 3, 3, 3]"
     * ```
     */
    fun primeFactor(num: BigInteger): List<BigInteger> {
        if (num == BigInteger.ZERO) {
            return emptyList()
        }

        var num = num
        val primeFactors = mutableListOf<BigInteger>()
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

    /**
     * # `primeFactorRandom`
     *
     * This function generates a random number and calculates its prime factors.
     *
     * __Return:__
     *
     * * `String` - The prime factors of the random number
     *
     * __Example:__
     *
     * ```kotlin
     * import com.prog.numbers.utils.operations.FactorUtils.primeFactorRandom
     * val primeFactors = primeFactorRandom()
     * println(primeFactors)
     * ```
     *
     * __Output:__
     *
     * ```kotlin
     * "PFactor[5] = [5]"
     * ```
     */
    fun primeFactorRandom(): String {
        val randomNum = Random.nextInt(1, 26)
        val primeFactors = primeFactor(BigInteger.valueOf(randomNum.toLong()))
        return "PFactor[$randomNum] = $primeFactors"
    }
}
