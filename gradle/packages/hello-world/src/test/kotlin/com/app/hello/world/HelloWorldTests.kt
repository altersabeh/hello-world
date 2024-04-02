package com.app.hello.world

import org.apache.commons.lang3.time.DateFormatUtils
import kotlin.test.Test
import kotlin.test.assertEquals

class HelloWorldTests {
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
            |Actual : $actual
            |
            |${"\u001B[00m"}
            """.trimMargin()
    }

    @Test
    fun `print greeting without name test`() {
        val args = emptyArray<String>()
        val expectedOutput = "Hello World from Gradle !"
        val actualOutput = printGreeting(args)
        val errorMessage = formatErrorMessage(expectedOutput, actualOutput)
        assertEquals(expectedOutput, actualOutput, errorMessage)
    }

    @Test
    fun `print greeting with name test`() {
        val args = arrayOf("Alter", "Sabeh")
        val expectedOutput = "Hello Alter Sabeh from Gradle !"
        val actualOutput = printGreeting(args)
        val errorMessage = formatErrorMessage(expectedOutput, actualOutput)
        assertEquals(expectedOutput, actualOutput, errorMessage)
    }

    @Test
    fun `print current date test`() {
        val now = System.currentTimeMillis()
        val formattedDate = DateFormatUtils.format(now, "MMMM dd, yyyy 'at' hh:mm a")
        val expectedOutput = "Today is $formattedDate"
        val actualOutput = printDate()
        val errorMessage = formatErrorMessage(expectedOutput, actualOutput)
        assertEquals(expectedOutput, actualOutput, errorMessage)
    }
}
