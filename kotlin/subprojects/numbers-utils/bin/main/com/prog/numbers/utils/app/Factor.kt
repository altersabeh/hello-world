package com.prog.numbers.utils.app

import com.prog.numbers.utils.operations.FactorUtils.factor
import com.prog.numbers.utils.operations.FactorUtils.primeFactor
import java.math.BigInteger

/**
 * # `getUserNumber`
 *
 * This function prompts the user to enter a number.
 *
 * __Return:__
 *
 * * `BigInteger` - The number entered by the user or from the command line
 * arguments
 *
 * __Example:__
 *
 * ```kotlin
 * import com.prog.numbers.utils.app.getNumber
 * val number = getNumber()
 * println("Number : $number")
 * ```
 *
 * __Output:__
 *
 * ```kotlin
 * "Enter a number : 5"
 * "Number : 5"
 * ```
 */
private fun getUserNumber(): BigInteger {
    print("Enter a number : ")
    val numberStr = readLine() ?: ""
    return numberStr.toBigIntegerOrNull() ?: BigInteger.ZERO
}

/**
 * # `getNumber`
 *
 * This function returns the number provided by the user or from the command line
 *
 * __Arguments:__
 *
 * * `args: Array<String>` - An array of strings that may contain the user's
 * number
 *
 * __Return:__
 *
 * * `BigInteger` - The number provided by the user or from the command line
 * arguments
 */
fun getNumber(args: Array<String>): BigInteger {
    return if (args.isNotEmpty() && args[0].toBigIntegerOrNull() != null) {
        args[0].toBigIntegerOrNull()!!
    } else {
        getUserNumber()
    }
}

/**
 * # `printFactor`
 *
 * This function prints the factors of a given number.
 *
 * __Arguments:__
 *
 * * `number: BigInteger` - The number for which the factors need to be printed
 */
fun printFactor(number: BigInteger) {
    val factors = factor(number)
    val factorsStr = factors.toString()
    println("Factor[$number] = $factorsStr")
}

/**
 * # `printPrimeFactor`
 *
 * This function prints the prime factors of a given number.
 *
 * __Arguments:__
 *
 * * `number: BigInteger` - The number for which the prime factors need to be
 * printed
 */
fun printPrimeFactor(number: BigInteger) {
    val primeFactors = primeFactor(number)
    val primeFactorsStr = primeFactors.toString()
    println("PFactor[$number] = $primeFactorsStr")
}

/**
 * # `main`
 *
 * This function is the entry point of the application.
 *
 * __Arguments:__
 *
 * * `args: Array<String>` - Command line arguments
 */
fun main(args: Array<String>) {
    val number = getNumber(args)
    printFactor(number)
    printPrimeFactor(number)
}
