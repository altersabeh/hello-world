package com.app.numbers

import com.app.numbers.utils.fibonacci

private fun getUserNumber(): Int {
    print("Enter a number : ")
    val numberStr = readLine()
    return numberStr?.trim()?.toIntOrNull() ?: 0
}

fun printFibonacci() {
    val args = arrayOf<String>()
    val number =
        if (args.size > 1) {
            args[1].toIntOrNull() ?: 0
        } else {
            getUserNumber()
        }
    println("Fib[$number] = ${fibonacci(number)}")
}

fun main() {
    printFibonacci()
}
