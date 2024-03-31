// Hello World in Gradle !

package com.app

import com.hello.world.*
import com.numbers.lib.*

fun main(args: Array<String>) {
    println(printGreeting(args))
    println(printDate())
    println("Some random numbers:")
    println(fibonacciRandom())
    println(factorialRandom())
}
