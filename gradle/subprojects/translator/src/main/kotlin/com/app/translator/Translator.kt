package com.app.translator

import kotlin.collections.hashMapOf

val helloTranslations =
    hashMapOf(
        "French" to "Bonjour",
        "Spanish" to "Hola",
        "German" to "Hallo",
        "Italian" to "Ciao",
        "Dutch" to "Hallo",
    )

val greetingsFromTranslations =
    hashMapOf(
        "French" to "salutations de",
        "Spanish" to "saludos desde",
        "German" to "grüße aus",
        "Italian" to "saluti da",
        "Dutch" to "groeten uit",
    )

fun translate(
    language: String,
    name: String,
): String {
    val greeting = helloTranslations[language]
    val greetingsFrom = greetingsFromTranslations[language]

    return if (greeting != null && greetingsFrom != null) {
        "$greeting $name, $greetingsFrom Gradle !"
    } else {
        "Hi $name, greetings from Gradle !"
    }
}
