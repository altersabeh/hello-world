# Gradle - Hello World

A simple **Hello World** program in Cargo.

```kotlin
// Hello World in Gradle !

package hello

import org.apache.commons.lang3.time.DateFormatUtils

fun printGreeting(args: Array<String>) {
    if (args.isNotEmpty()) {
        val name = args.drop(1).joinToString(" ")
        println("Hi $name, greetings from Gradle !")
    } else {
        println("Hello World from Gradle !")
    }
}

fun printDate() {
    val currentDate = System.currentTimeMillis()
    val format = "MMMM dd, yyyy HH:mm:ss"
    val formattedDate = DateFormatUtils.format(currentDate, format)
    println("Today is $formattedDate")
}

fun main(args: Array<String>) {
    printGreeting(args)
    printDate()
}
```

## Programming Language

- Kotlin
- Groovy
- Java

## Creating a new Cargo project

To create a new Rust project, run the following command:

`gradle init --project-name hello-world`

## Building the project

To build the project, navigate to the project directory and run the following
command:

`gradle assemble`

## Running the project

To run the project, navigate to the project directory and run the following
command:

`gradle run`

## Testing the project

To test the project, navigate to the project directory and run the following
command:

`gradle test`
