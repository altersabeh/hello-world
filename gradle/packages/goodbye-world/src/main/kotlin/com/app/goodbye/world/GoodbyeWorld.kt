package com.app.goodbye.world

fun printGoodbye(args: Array<String>): String {
    return if (args.isNotEmpty()) {
        val name = args.drop(0).joinToString(" ")
        "Goodbye $name from Gradle !"
    } else {
        "Goodbye World from Gradle !"
    }
}

fun printBanner(): String {
    return """
        |
        |     ▄████ ██▀███  ▄▄▄     ▓█████▄ ██▓   ▓█████
        |    ██▒ ▀█▓██ ▒ ██▒████▄   ▒██▀ ██▓██▒   ▓█   ▀
        |   ▒██░▄▄▄▓██ ░▄█ ▒██  ▀█▄ ░██   █▒██░   ▒███
        |   ░▓█  ██▒██▀▀█▄ ░██▄▄▄▄██░▓█▄   ▒██░   ▒▓█  ▄
        |   ░▒▓███▀░██▓ ▒██▒▓█   ▓██░▒████▓░██████░▒████▒
        |    ░▒   ▒░ ▒▓ ░▒▓░▒▒   ▓▒█░▒▒▓  ▒░ ▒░▓  ░░ ▒░ ░
        |     ░   ░  ░▒ ░ ▒░ ▒   ▒▒ ░░ ▒  ▒░ ░ ▒  ░░ ░  ░
        |   ░ ░   ░  ░░   ░  ░   ▒   ░ ░  ░  ░ ░     ░
        |         ░   ░          ░  ░  ░       ░  ░  ░  ░
        |                            ░
        |
        """.trimMargin()
}
