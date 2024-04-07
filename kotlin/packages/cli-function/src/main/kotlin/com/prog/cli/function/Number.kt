package com.prog.cli.function

import com.prog.numbers.utils.operations.FactorialUtils.factorial
import com.prog.numbers.utils.operations.FibonacciUtils.fibonacci

object Number {
    /**
     * # `main`
     *
     * This function is the entry point of the application.
     *
     * __Arguments:__
     *
     * * `args: Array<String>`
     */
    @JvmStatic
    fun main(args: Array<String>) {
        println("===================================================")
        printNumberCalculations()
        println("===================================================")
    }

    /**
     * # `getUserNumber`
     *
     * This function prompts the user to enter a number and returns the input.
     *
     * __Return:__
     *
     * * `Int` - The user's number
     *
     * __Example:__
     *
     * ```kotlin
     * import com.prog.cli.function.Number.getUserNumber
     * val number = getUserNumber()
     * println("Number : $number")
     * ```
     *
     * __Output:__
     *
     * ```kotlin
     * "Enter a number : 5"
     * "Number : 5"
     * ```
     */
    private fun getUserNumber(): Int {
        print("Enter a number : ")
        return readLine()?.trim()?.toIntOrNull() ?: 0
    }

    /**
     * # `printNumberCalculations`
     *
     * This function prints the Fibonacci and Factorial of the user's number by
     * using the `fibonacci` and `factorial` functions from the `FibonacciUtils`
     */
    fun printNumberCalculations() {
        val number = getUserNumber()
        println("Fib[$number] = ${fibonacci(number)}")
        println("Fact[$number] = ${factorial(number)}")
    }
}
