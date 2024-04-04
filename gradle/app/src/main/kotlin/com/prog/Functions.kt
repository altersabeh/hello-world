package com.prog

import com.prog.cli.function.Banner.printBannerMessage
import com.prog.cli.function.Details.printUserDetails
import com.prog.cli.function.Greeter.printGoodbyeMessage
import com.prog.cli.function.Greeter.printWelcomeMessage
import com.prog.cli.function.Number.printNumberCalculations
import com.prog.cli.function.Random.printRandomNumbers
import kotlin.io.readLine

object Functions {
    private fun waitForUser() {
        print("Press enter to continue ...")
        readLine()
    }

    fun startProgram(args: Array<String>) {
        println("===================================================")
        println("")
        printWelcomeMessage(args)
        printUserDetails(args)
        println("")
        printNumberCalculations()
        println("")
        printRandomNumbers()
        println("")
        waitForUser()
        println("")
        printGoodbyeMessage(args)
        printBannerMessage()
        println("===================================================")
    }
}
