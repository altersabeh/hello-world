package com.app.numbers.utils.operations

import org.apache.commons.lang3.time.DateFormatUtils
import java.math.BigInteger
import kotlin.test.Test
import kotlin.test.assertEquals
import kotlin.test.assertTrue

class FibonacciUtilsTests {
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
    fun `fibonacci test`() {
        val n = 100
        val expectedOutput = BigInteger("354224848179261915075")
        val actualOutput = FibonacciUtils.fibonacci(n)
        val errorMessage = formatErrorMessage(expectedOutput, actualOutput)
        assertEquals(expectedOutput, actualOutput, errorMessage)
    }

    @Test
    fun `fibonacci random test`() {
        val result = FibonacciUtils.fibonacciRandom()
        val startString = "Fib["
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
