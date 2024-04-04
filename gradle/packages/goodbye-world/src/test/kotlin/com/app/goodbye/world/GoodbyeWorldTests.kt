package com.app.goodbye.world

import org.apache.commons.lang3.time.DateFormatUtils
import kotlin.test.Test
import kotlin.test.assertEquals

class GoodbyeWorldTests {
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

    @Test
    fun `print goodbye without name test`() {
        val args = emptyArray<String>()
        val expectedOutput = "Goodbye World from Gradle !"
        val actualOutput = printGoodbye(args)
        val errorMessage = formatErrorMessage(expectedOutput, actualOutput)
        assertEquals(expectedOutput, actualOutput, errorMessage)
    }

    @Test
    fun `print goodbye with name test`() {
        val args = arrayOf("Alter", "Sabeh")
        val expectedOutput = "Goodbye Alter Sabeh from Gradle !"
        val actualOutput = printGoodbye(args)
        val errorMessage = formatErrorMessage(expectedOutput, actualOutput)
        assertEquals(expectedOutput, actualOutput, errorMessage)
    }

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
