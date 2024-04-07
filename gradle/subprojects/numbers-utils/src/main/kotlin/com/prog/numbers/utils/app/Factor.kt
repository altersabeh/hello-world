package com.prog.numbers.utils.app

import com.prog.numbers.utils.operations.FactorUtils.factor
import com.prog.numbers.utils.operations.FactorUtils.primeFactor
import java.math.BigInteger

private fun getUserNumber(): BigInteger {
    print("Enter a number : ")
    val numberStr = readLine() ?: ""
    return numberStr.toBigIntegerOrNull() ?: BigInteger.ZERO
}

fun getNumber(args: Array<String>): BigInteger {
    return if (args.isNotEmpty() && args[0].toBigIntegerOrNull() != null) {
        args[0].toBigIntegerOrNull()!!
    } else {
        getUserNumber()
    }
}

fun printFactor(number: BigInteger) {
    val factors = factor(number)
    val factorsStr = factors.toString()
    println("Factor[$number] = $factorsStr")
}

fun printPrimeFactor(number: BigInteger) {
    val primeFactors = primeFactor(number)
    val primeFactorsStr = primeFactors.toString()
    println("PFactor[$number] = $primeFactorsStr")
}

fun main(args: Array<String>) {
    val number = getNumber(args)
    printFactor(number)
    printPrimeFactor(number)
}