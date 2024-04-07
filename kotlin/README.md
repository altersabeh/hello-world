# Gradle - Hello World

A simple **Hello World** program in Gradle.

## Programming Language

- Kotlin
- Groovy
- Java

## Creating a new Gradle project

To create a new **`gradle`** project, run the following command:

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

## Project Structure

```plaintext
gradle-hello
├──── app
│     ├──── src
│     │     └──── main
│     │           └──── kotlin
│     │                 └──── com
│     │                       └──── prog
│     │                             ├──── Functions.kt
│     │                             └──── Main.kt
│     └──── build.gradle.kts
├──── build
│     ├──── gradle-hello
│     │     ├──── classes
│     │     │     └──── ...
│     │     ├──── distributions
│     │     │     └──── ...
│     │     ├──── intermediates
│     │     │     └──── ...
│     │     ├──── kotlin
│     │     │     └──── ...
│     │     ├──── libs
│     │     │     └──── ...
│     │     ├──── reports
│     │     │     └──── ...
│     │     ├──── resources
│     │     │     └──── ...
│     │     ├──── scripts
│     │     │     └──── ...
│     │     └──── tmp
│     │           └──── ...
│     └──── ...
├──── gradle
│     ├──── wrapper
│     │     ├──── gradle-wrapper.jar
│     │     └──── gradle-wrapper.properties
│     └──── libs.versions.toml
├──── packages
│     ├──── cli-function
│     │     ├──── src
│     │     │     └──── main
│     │     │           └──── kotlin
│     │     │                 └──── com
│     │     │                       └──── prog
│     │     │                             └──── cli
│     │     │                                   └──── function
│     │     │                                         ├──── Banner.kt
│     │     │                                         ├──── Details.kt
│     │     │                                         ├──── Greeter.kt
│     │     │                                         ├──── Number.kt
│     │     │                                         └──── Random.kt
│     │     └──── build.gradle.kts
│     ├──── goodbye-world
│     │     ├──── src
│     │     │     ├──── main
│     │     │     │     └──── kotlin
│     │     │     │           └──── com
│     │     │     │                 └──── prog
│     │     │     │                       └──── goodbye
│     │     │     │                             └──── world
│     │     │     │                                   └──── GoodbyeWorld.kt
│     │     │     └──── test
│     │     │           └──── kotlin
│     │     │                 └──── com
│     │     │                       └──── prog
│     │     │                             └──── goodbye
│     │     │                                   └──── world
│     │     │                                         └──── GoodbyeWorldTests.kt
│     │     └──── build.gradle.kts
│     └──── hello-world
│           ├──── src
│           │     ├──── main
│           │     │     └──── kotlin
│           │     │           └──── com
│           │     │                 └──── prog
│           │     │                       └──── hello
│           │     │                             └──── world
│           │     │                                   └──── HelloWorld.kt
│           │     └──── test
│           │           └──── kotlin
│           │                 └──── com
│           │                       └──── prog
│           │                             └──── hello
│           │                                   └──── world
│           │                                         └──── HelloWorldTests.kt
│           └──── build.gradle.kts
├──── resources
│     └──── META-INF
│           ├──── MANIFEST.MF
│           └──── license.txt
├──── subprojects
│     ├──── date-today
│     │     ├──── src
│     │     │     └──── main
│     │     │           └──── kotlin
│     │     │               └──── com
│     │     │                     └──── prog
│     │     │                     └──── DateToday.kt
│     │     └──── build.gradle.kts
│     ├──── hello-gradle
│     │     ├──── src
│     │     │     └──── main
│     │     │           └──── kotlin
│     │     │                 └──── com
│     │     │                       └──── prog
│     │     │                             └──── HelloGradle.kt
│     │     └──── build.gradle.kts
│     ├──── numbers-utils
│     │     ├──── src
│     │     │     ├──── main
│     │     │     │     └──── kotlin
│     │     │     │           └──── com
│     │     │     │                 └──── prog
│     │     │     │                       └──── numbers
│     │     │     │                             └──── utils
│     │     │     │                                   ├──── bin
│     │     │     │                                   │     ├──── Factor.kt
│     │     │     │                                   │     ├──── Factorial.kt
│     │     │     │                                   │     └──── Fibonacci.kt
│     │     │     │                                   └──── operations
│     │     │     │                                         ├──── FactorUtils.kt
│     │     │     │                                         ├──── FactorialUtils.kt
│     │     │     │                                         └──── FibonacciUtils.kt
│     │     │     └──── test
│     │     │           └──── kotlin
│     │     │                 └──── com
│     │     │                       └──── prog
│     │     │                             └──── numbers
│     │     │                                   └──── utils
│     │     │                                         └──── operations
│     │     │                                               ├──── FactorUtilsTests.kt
│     │     │                                               ├──── FactorialUtilsTests.kt
│     │     │                                               └──── FibonacciUtilsTests.kt
│     │     └──── build.gradle.kts
│     └──── translator
│           ├──── src
│           │     ├──── main
│           │     │     └──── kotlin
│           │     │           └──── com
│           │     │                 └──── prog
│           │     │                       └──── translator
│           │     │                             └──── Translator.kt
│           │     └──── test
│           │           └──── kotlin
│           │                 └──── com
│           │                       └──── prog
│           │                             └──── translator
│           │                                   └──── TranslatorTests.kt
│           └──── build.gradle.kts
├──── build.gradle.kts
├──── gradle.properties
├──── gradlew
├──── gradlew.bat
├──── settings.gradle.kts
├──── CHANGELOG.md
├──── LICENSE.md
└──── README.md
```
