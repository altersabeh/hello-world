package com.prog.numbers.utils.app

import com.prog.numbers.utils.operations.FibonacciUtils.fibonacci

/**
 * # `getUserNumber`
 *
 * This function prompts the user to enter a number.
 *
 * __Return:__
 *
 * * `BigInteger` - The number entered by the user or from the command line arguments
 *
 * __Example:__
 *
 * ```kotlin
 * import com.prog.numbers.utils.app.getNumber
 * val number = getNumber()
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
    val numberStr = readLine()
    return numberStr?.trim()?.toIntOrNull() ?: 0
}

/**
 * # `printFactorial`
 *
 * This function prints the factorial of the user's number by using the
 * `factorial` function from the `FactorialUtils`
 *
 * __Arguments:__
 *
 * * `args: Array<String>` - Command line arguments
 */
fun printFibonacci(args: Array<String>) {
    val number =
        if (args.size > 1) {
            args[0].toIntOrNull() ?: 0
        } else {
            getUserNumber()
        }
    println("Fib[$number] = ${fibonacci(number)}")
}

/**
 * # `main`
 *
 * This function is the entry point of the application.
 *
 * __Arguments:__
 *
 * * `args: Array<String>` - Command line arguments
 */
fun main(args: Array<String>) {
    printFactorial(args)
}
