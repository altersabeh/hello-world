package com.app.cli.function

import com.app.numbers.utils.factorial
import com.app.numbers.utils.fibonacci

object Number {
    @JvmStatic
    fun main(args: Array<String>) {
        println("===================================================")
        printNumberCalculations()
        println("===================================================")
    }

    private fun getUserNumber(): Int {
        print("Enter a number : ")
        return readLine()?.trim()?.toIntOrNull() ?: 0
    }

    fun printNumberCalculations() {
        val number = getUserNumber()
        println("Fib[$number] = ${fibonacci(number)}")
        println("Fact[$number] = ${factorial(number)}")
    }
}
