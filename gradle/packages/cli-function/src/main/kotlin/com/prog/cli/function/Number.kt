package com.prog.cli.function

import com.prog.numbers.utils.operations.FactorialUtils.factorial
import com.prog.numbers.utils.operations.FibonacciUtils.fibonacci

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
