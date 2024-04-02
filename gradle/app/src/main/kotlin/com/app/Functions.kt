package com.app

import com.app.cli.function.Banner.printBannerMessage
import com.app.cli.function.Details.printUserDetails
import com.app.cli.function.Greeter.printGoodbyeMessage
import com.app.cli.function.Greeter.printWelcomeMessage
import com.app.cli.function.Number.printNumberCalculations
import com.app.cli.function.Random.printRandomNumbers
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
