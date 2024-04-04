package com.prog.translator

import kotlin.test.Test
import kotlin.test.assertEquals
import org.apache.commons.lang3.time.DateFormatUtils

class TranslatorTests {
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
    fun `translate ENGLISH test`() {
        val lang = "English"
        val expectedOutput = "Hi Alter Sabeh, greetings from Gradle !"
        val name = "Alter Sabeh"
        val actualOutput = translate(lang, name)
        val errorMessage = formatErrorMessage(expectedOutput, actualOutput)
        assertEquals(expectedOutput, actualOutput, errorMessage)
    }

    @Test
    fun `translate FRENCH test`() {
        val lang = "French"
        val expectedOutput = "Bonjour Alter Sabeh, salutations de Gradle !"
        val name = "Alter Sabeh"
        val actualOutput = translate(lang, name)
        val errorMessage = formatErrorMessage(expectedOutput, actualOutput)
        assertEquals(expectedOutput, actualOutput, errorMessage)
    }

    @Test
    fun `translate SPANISH test`() {
        val lang = "Spanish"
        val expectedOutput = "Hola Alter Sabeh, saludos desde Gradle !"
        val name = "Alter Sabeh"
        val actualOutput = translate(lang, name)
        val errorMessage = formatErrorMessage(expectedOutput, actualOutput)
        assertEquals(expectedOutput, actualOutput, errorMessage)
    }

    @Test
    fun `translate GERMAN test`() {
        val lang = "German"
        val expectedOutput = "Hallo Alter Sabeh, grüße aus Gradle !"
        val name = "Alter Sabeh"
        val actualOutput = translate(lang, name)
        val errorMessage = formatErrorMessage(expectedOutput, actualOutput)
        assertEquals(expectedOutput, actualOutput, errorMessage)
    }

    @Test
    fun `translate ITALIAN test`() {
        val lang = "Italian"
        val expectedOutput = "Ciao Alter Sabeh, saluti da Gradle !"
        val name = "Alter Sabeh"
        val actualOutput = translate(lang, name)
        val errorMessage = formatErrorMessage(expectedOutput, actualOutput)
        assertEquals(expectedOutput, actualOutput, errorMessage)
    }

    @Test
    fun `translate DUTCH test`() {
        val lang = "Dutch"
        val expectedOutput = "Hallo Alter Sabeh, groeten uit Gradle !"
        val name = "Alter Sabeh"
        val actualOutput = translate(lang, name)
        val errorMessage = formatErrorMessage(expectedOutput, actualOutput)
        assertEquals(expectedOutput, actualOutput, errorMessage)
    }

    @Test
    fun `translate UNKNOWN test`() {
        val lang = "Unknown"
        val expectedOutput = "Hi Alter Sabeh, greetings from Gradle !"
        val name = "Alter Sabeh"
        val actualOutput = translate(lang, name)
        val errorMessage = formatErrorMessage(expectedOutput, actualOutput)
        assertEquals(expectedOutput, actualOutput, errorMessage)
    }
}
