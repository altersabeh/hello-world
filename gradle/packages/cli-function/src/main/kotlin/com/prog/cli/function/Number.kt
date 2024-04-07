package com.prog.cli.function

import com.prog.numbers.utils.operations.FactorialUtils.factorial
import com.prog.numbers.utils.operations.FibonacciUtils.fibonacci

object Number {
    /**
     * # `main`
     *
     * This function is entry point of the application.
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
     * This function prompts the user to enter a number and returns the number
     * entered by the user.
     *
     * __Returns:__
     *
     * The number entered by the user.
     *
     * __Example:__
     * ```kotlin
     * val number = getUserNumber()
     * ```
     * __Output:__
     * ```txt
     * Enter a number : 5
     * ```
     */
    private fun getUserNumber(): Int {
        print("Enter a number : ")
        return readLine()?.trim()?.toIntOrNull() ?: 0
    }

    /**
     * # `printNumberCalculations`
     *
     * This function prints the Fibonacci and factorial values of a
     * user-provided number.
     *
     * The number is obtained by calling the `getUserNumber` function. The
     * fibonacci and factorial values are calculated by calling the `fibonacci`
     * and `factorial` functions respectively.
     */
    fun printNumberCalculations() {
        val number = getUserNumber()
        println("Fib[$number] = ${fibonacci(number)}")
        println("Fact[$number] = ${factorial(number)}")
    }
}
