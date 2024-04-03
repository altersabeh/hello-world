package com.app.numbers.lib

import java.math.BigInteger
import kotlin.random.Random

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
