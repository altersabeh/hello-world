package com.prog.translator

import org.apache.commons.lang3.time.DateFormatUtils
import kotlin.test.Test
import kotlin.test.assertEquals

class TranslatorTests {
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
     * # `translate ENGLISH test`
     *
     * This function tests the `translate` function with English language.
     */
    @Test
    fun `translate ENGLISH test`() {
        val lang = "English"
        val expectedOutput = "Hi Alter Sabeh, greetings from Kotlin !"
        val name = "Alter Sabeh"
        val actualOutput = translate(lang, name)
        val errorMessage = formatErrorMessage(expectedOutput, actualOutput)
        assertEquals(expectedOutput, actualOutput, errorMessage)
    }

    /**
     * # `translate FRENCH test`
     *
     * This function tests the `translate` function with French language.
     */
    @Test
    fun `translate FRENCH test`() {
        val lang = "French"
        val expectedOutput = "Bonjour Alter Sabeh, salutations de Kotlin !"
        val name = "Alter Sabeh"
        val actualOutput = translate(lang, name)
        val errorMessage = formatErrorMessage(expectedOutput, actualOutput)
        assertEquals(expectedOutput, actualOutput, errorMessage)
    }

    /**
     * # `translate SPANISH test`
     *
     * This function tests the `translate` function with Spanish language.
     */
    @Test
    fun `translate SPANISH test`() {
        val lang = "Spanish"
        val expectedOutput = "Hola Alter Sabeh, saludos desde Kotlin !"
        val name = "Alter Sabeh"
        val actualOutput = translate(lang, name)
        val errorMessage = formatErrorMessage(expectedOutput, actualOutput)
        assertEquals(expectedOutput, actualOutput, errorMessage)
    }

    /**
     * # `translate GERMAN test`
     *
     * This function tests the `translate` function with German language.
     */
    @Test
    fun `translate GERMAN test`() {
        val lang = "German"
        val expectedOutput = "Hallo Alter Sabeh, grüße aus Kotlin !"
        val name = "Alter Sabeh"
        val actualOutput = translate(lang, name)
        val errorMessage = formatErrorMessage(expectedOutput, actualOutput)
        assertEquals(expectedOutput, actualOutput, errorMessage)
    }

    /**
     * # `translate ITALIAN test`
     *
     * This function tests the `translate` function with Italian language.
     */
    @Test
    fun `translate ITALIAN test`() {
        val lang = "Italian"
        val expectedOutput = "Ciao Alter Sabeh, saluti da Kotlin !"
        val name = "Alter Sabeh"
        val actualOutput = translate(lang, name)
        val errorMessage = formatErrorMessage(expectedOutput, actualOutput)
        assertEquals(expectedOutput, actualOutput, errorMessage)
    }

    /**
     * # `translate DUTCH test`
     *
     * This function tests the `translate` function with Dutch language.
     */
    @Test
    fun `translate DUTCH test`() {
        val lang = "Dutch"
        val expectedOutput = "Hallo Alter Sabeh, groeten uit Kotlin !"
        val name = "Alter Sabeh"
        val actualOutput = translate(lang, name)
        val errorMessage = formatErrorMessage(expectedOutput, actualOutput)
        assertEquals(expectedOutput, actualOutput, errorMessage)
    }

    /**
     * # `translate UNKNOWN test`
     *
     * This function tests the `translate` function with unknown language.
     */
    @Test
    fun `translate UNKNOWN test`() {
        val lang = "Unknown"
        val expectedOutput = "Hi Alter Sabeh, greetings from Kotlin !"
        val name = "Alter Sabeh"
        val actualOutput = translate(lang, name)
        val errorMessage = formatErrorMessage(expectedOutput, actualOutput)
        assertEquals(expectedOutput, actualOutput, errorMessage)
    }
}
