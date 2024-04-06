package com.prog.numbers.utils.operations

import org.apache.commons.lang3.time.DateFormatUtils
import java.math.BigInteger
import kotlin.test.Test
import kotlin.test.assertEquals
import kotlin.test.assertTrue

class FactorUtilsTests {
    private fun formatErrorMessage(
        expected: List<BigInteger>,
        actual: List<BigInteger>,
    ): String {
        val now = System.currentTimeMillis()
        val formattedDate = DateFormatUtils.format(now, "yyyy-MM-dd'T'HH:mm:ss")
        return """
            |${"\u001B[31m"}
            |Test run at: $formattedDate
            |Expected : $expected
            |  Actual : $actual
            |
            |${"\u001B[00m"}
            """.trimMargin()
    }

    @Test
    fun `factor test`() {
        val number = BigInteger.valueOf(60)
        val expectedOutput =
            listOf(
                BigInteger.valueOf(1),
                BigInteger.valueOf(2),
                BigInteger.valueOf(3),
                BigInteger.valueOf(4),
                BigInteger.valueOf(5),
                BigInteger.valueOf(6),
                BigInteger.valueOf(10),
                BigInteger.valueOf(12),
                BigInteger.valueOf(15),
                BigInteger.valueOf(20),
                BigInteger.valueOf(30),
                BigInteger.valueOf(60),
            )
        val actualOutput = FactorUtils.factor(number)
        val errorMessage = formatErrorMessage(expectedOutput, actualOutput)
        assertEquals(expectedOutput, actualOutput, errorMessage)
    }

    @Test
    fun `factorial random test`() {
        val result = FactorUtils.factorRandom()
        val startString = "Factor["
        val errorMessage =
            """
            |${"\u001B[31m"}
            |Expected: $startString
            |     Got: $result${"\u001B[00m"}
            """.trimMargin()
        assertTrue(result.startsWith(startString), errorMessage)
        assertTrue(result.contains(" = "))
    }

    @Test
    fun `prime factor test`() {
        val number = BigInteger.valueOf(60)
        val expectedOutput =
            listOf(
                BigInteger.valueOf(2),
                BigInteger.valueOf(2),
                BigInteger.valueOf(3),
                BigInteger.valueOf(5),
            )
        val actualOutput = FactorUtils.primeFactor(number)
        val errorMessage = formatErrorMessage(expectedOutput, actualOutput)
        assertEquals(expectedOutput, actualOutput, errorMessage)
    }

    @Test
    fun `prime factorial random test`() {
        val result = FactorUtils.primeFactorRandom()
        val startString = "PFactor["
        val errorMessage =
            """
            |${"\u001B[31m"}
            |Expected: $startString
            |     Got: $result${"\u001B[00m"}
            """.trimMargin()
        assertTrue(result.startsWith(startString), errorMessage)
        assertTrue(result.contains(" = "))
    }
}
