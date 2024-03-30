package hello

import org.apache.commons.lang3.time.DateFormatUtils
import kotlin.test.Test
import kotlin.test.assertEquals

class HelloWorldTests {
    @Test
    fun `print greeting without name test`() {
        val args = emptyArray<String>()
        val expectedOutput = "Hello World from Gradle !"
        val actualOutput = printGreeting(args)
        assertEquals(actualOutput, expectedOutput)
    }

    @Test
    fun `print greeting with name test`() {
        val args = arrayOf("Alter", "Sabeh")
        val expectedOutput = "Hi Alter Sabeh, greetings from Gradle !"
        val actualOutput = printGreeting(args)
        assertEquals(actualOutput, expectedOutput)
    }

    @Test
    fun `print current date test`() {
        val now = System.currentTimeMillis()
        val formattedDate = DateFormatUtils.format(now, "MMMM d, yyyy 'at' hh:mm a")
        val expectedOutput = "Today is $formattedDate"
        val actualOutput = printDate()
        assertEquals(actualOutput, expectedOutput)
    }
}
