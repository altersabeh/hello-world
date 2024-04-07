package com.prog.goodbye.world

import org.apache.commons.lang3.time.DateFormatUtils
import kotlin.test.Test
import kotlin.test.assertEquals

class GoodbyeWorldTests {
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
     * # `print goodbye without name test`
     *
     * This function tests the `printGoodbye` function without arguments.
     */
    @Test
    fun `print goodbye without name test`() {
        val args = emptyArray<String>()
        val expectedOutput = "Goodbye World from Kotlin !"
        val actualOutput = printGoodbye(args)
        val errorMessage = formatErrorMessage(expectedOutput, actualOutput)
        assertEquals(expectedOutput, actualOutput, errorMessage)
    }

    /**
     * # `print goodbye with name test`
     *
     * This function tests the `printGoodbye` function with arguments.
     */
    @Test
    fun `print goodbye with name test`() {
        val args = arrayOf("Alter", "Sabeh")
        val expectedOutput = "Goodbye Alter Sabeh from Kotlin !"
        val actualOutput = printGoodbye(args)
        val errorMessage = formatErrorMessage(expectedOutput, actualOutput)
        assertEquals(expectedOutput, actualOutput, errorMessage)
    }

    /**
     * # `print banner test`
     *
     * This function tests the `printBanner` function.
     */
    @Test
    fun `print banner test`() {
        val expectedOutput =
            """
            |
            |     ▄████ ██▀███  ▄▄▄     ▓█████▄ ██▓   ▓█████
            |    ██▒ ▀█▓██ ▒ ██▒████▄   ▒██▀ ██▓██▒   ▓█   ▀
            |   ▒██░▄▄▄▓██ ░▄█ ▒██  ▀█▄ ░██   █▒██░   ▒███
            |   ░▓█  ██▒██▀▀█▄ ░██▄▄▄▄██░▓█▄   ▒██░   ▒▓█  ▄
            |   ░▒▓███▀░██▓ ▒██▒▓█   ▓██░▒████▓░██████░▒████▒
            |    ░▒   ▒░ ▒▓ ░▒▓░▒▒   ▓▒█░▒▒▓  ▒░ ▒░▓  ░░ ▒░ ░
            |     ░   ░  ░▒ ░ ▒░ ▒   ▒▒ ░░ ▒  ▒░ ░ ▒  ░░ ░  ░
            |   ░ ░   ░  ░░   ░  ░   ▒   ░ ░  ░  ░ ░     ░
            |         ░   ░          ░  ░  ░       ░  ░  ░  ░
            |                            ░
            |
            """.trimMargin()
        val actualOutput = printBanner()
        val errorMessage = formatErrorMessage(expectedOutput, actualOutput)
        assertEquals(expectedOutput, actualOutput, errorMessage)
    }
}
