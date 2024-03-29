package hello

import java.io.ByteArrayOutputStream
import java.io.PrintStream
import kotlin.test.Test
import kotlin.test.assertEquals
import org.apache.commons.lang3.time.DateFormatUtils

class HelloWorldTest {
  private val standardOut = System.out
  private val outputStreamCaptor = ByteArrayOutputStream()

  @Test
  fun testHelloWorld() {
    System.setOut(PrintStream(outputStreamCaptor))
    val timestamp = System.currentTimeMillis()
    val expectedOutput =
        "Hello World from Gradle !\nToday is ${DateFormatUtils.format(timestamp, "MMMM d, yyyy HH:mm:ss")}\n"

    main(emptyArray())

    assertEquals(expectedOutput, outputStreamCaptor.toString())
    System.setOut(standardOut)
  }

  @Test
  fun testHelloWorldWithName() {
    System.setOut(PrintStream(outputStreamCaptor))
    val name = "Alter Sabeh"
    val timestamp = System.currentTimeMillis()
    val expectedOutput =
        "Hi $name, greetings from Gradle !\nToday is ${DateFormatUtils.format(timestamp, "MMMM d, yyyy HH:mm:ss")}\n"

    main(arrayOf("", name))

    assertEquals(expectedOutput, outputStreamCaptor.toString())
    System.setOut(standardOut)
  }
}
