package com.prog

import com.prog.cli.function.Banner.printBannerMessage
import com.prog.cli.function.Details.printUserDetails
import com.prog.cli.function.Greeter.printGoodbyeMessage
import com.prog.cli.function.Greeter.printWelcomeMessage
import com.prog.cli.function.Number.printNumberCalculations
import com.prog.cli.function.Random.printRandomNumbers
import kotlin.io.readLine

object Functions {
    /**
     * # `waitForUser`
     *
     * This function is used to wait for the user to press enter before
     * continuing the program.
     *
     * ```kotlin
     * import com.prog.Functions.waitForUser
     * waitForUser()
     * ```
     *
     * __Output:__
     *
     * ```kotlin
     * "Press enter to continue ..."
     * ```
     */
    private fun waitForUser() {
        print("Press enter to continue ...")
        readLine()
    }

    /**
     * # `startProgram`
     *
     * This function is used to start the program and print the welcome message,
     * user details, number calculations, random numbers, goodbye message and
     * banner message.
     */
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
