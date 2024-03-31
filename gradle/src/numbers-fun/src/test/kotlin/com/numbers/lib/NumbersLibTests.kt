package com.numbers.lib

import java.math.BigInteger
import kotlin.test.Test
import kotlin.test.assertEquals

class NumbersLibTests {
    @Test
    fun `fibonacci test`() {
        val n = 100
        val expectedOutput = BigInteger("354224848179261915075")
        val actualOutput = fibonacci(n)
        assertEquals(expectedOutput, actualOutput)
    }

    @Test
    fun `factorial test`() {
        val n = 75
        val expectedOutput =
            BigInteger(
                "24809140811395398091946477116594033660926243886570122837795894512655842677572867409443815424000000000000000000",
            )
        val actualOutput = factorial(n)
        assertEquals(expectedOutput, actualOutput)
    }
}
