package com.app.numbers

import com.app.numbers.lib.factorial

private fun getUserNumber(): Int {
    print("Enter a number : ")
    val numberStr = readLine()
    return numberStr?.trim()?.toIntOrNull() ?: 0
}

fun printFactorial() {
    val args = arrayOf<String>()
    val number =
        if (args.size > 1) {
            args[1].toIntOrNull() ?: 0
        } else {
            getUserNumber()
        }
    println("Fact[$number] = ${factorial(number)}")
}

fun main() {
    printFactorial()
}