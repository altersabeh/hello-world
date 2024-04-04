package com.app.numbers.utils.operations

import org.apache.commons.lang3.time.DateFormatUtils
import java.math.BigInteger
import kotlin.test.Test
import kotlin.test.assertEquals
import kotlin.test.assertTrue

class FactorialUtilsTests {
    private fun formatErrorMessage(
        expected: BigInteger,
        actual: BigInteger,
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
    fun `factorial test`() {
        val n = 75
        val expectedOutput =
            BigInteger(
                "24809140811395398091946477116594033660926243886570122837795894512655842677572867409443815424000000000000000000",
            )
        val actualOutput = FactorialUtils.factorial(n)
        val errorMessage = formatErrorMessage(expectedOutput, actualOutput)
        assertEquals(expectedOutput, actualOutput, errorMessage)
    }

    @Test
    fun `factorial random test`() {
        val result = FactorialUtils.factorialRandom()
        val startString = "Fact["
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
