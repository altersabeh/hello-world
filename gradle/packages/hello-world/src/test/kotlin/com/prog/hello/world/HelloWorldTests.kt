package com.prog.hello.world

import org.apache.commons.lang3.time.DateFormatUtils
import kotlin.test.Test
import kotlin.test.assertEquals

class HelloWorldTests {
    /**
     * # `formatErrorMessage`
     *
     * This function formats the error message for the test.
     *
     * __Arguments:__
     *
     * * `expected: String` - The expected output.
     * * `actual: String` - The actual output.
     *
     * __Return:__
     *
     * * `String` - The formatted error message.
     */
    private fun formatErrorMessage(
        expected: String,
        actual: String,
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

    /**
     * # `print greeting without name test`
     *
     * This function tests the `printGreeting` function without arguments.
     */
    @Test
    fun `print greeting without name test`() {
        val args = emptyArray<String>()
        val expectedOutput = "Hello World from Gradle !"
        val actualOutput = printGreeting(args)
        val errorMessage = formatErrorMessage(expectedOutput, actualOutput)
        assertEquals(expectedOutput, actualOutput, errorMessage)
    }

    /**
     * # `print greeting with name test`
     *
     * This function tests the `printGreeting` function with arguments.
     */
    @Test
    fun `print greeting with name test`() {
        val args = arrayOf("Alter", "Sabeh")
        val expectedOutput = "Hello Alter Sabeh from Gradle !"
        val actualOutput = printGreeting(args)
        val errorMessage = formatErrorMessage(expectedOutput, actualOutput)
        assertEquals(expectedOutput, actualOutput, errorMessage)
    }

    /**
     * # `print date test`
     *
     * This function tests the `printDate` function.
     */
    @Test
    fun `print current date test`() {
        val now = System.currentTimeMillis()
        val formattedDate = DateFormatUtils.format(now, "MMMM dd, yyyy 'at' hh:mm a")
        val expectedOutput = "Today is $formattedDate"
        val actualOutput = printDate()
        val errorMessage = formatErrorMessage(expectedOutput, actualOutput)
        assertEquals(expectedOutput, actualOutput, errorMessage)
    }

    /**
     * # `print greet test`
     *
     * This function tests the `GREETER` constant.
     */
    @Test
    fun `print greet test`() {
        val expectedOutput = "Hello, Gradle's Here !"
        val actualOutput = GREETING
        val errorMessage = formatErrorMessage(expectedOutput, actualOutput)
        assertEquals(expectedOutput, actualOutput, errorMessage)
    }
}
