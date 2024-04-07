package com.prog.translator

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

/**
 * # `translate`
 *
 * This function translates a greeting message to the user in the specified
 * language.
 *
 * __Arguments:__
 *
 * * `language: String` - The language in which the greeting should be
 * translated.
 * * `name: String` - The name of the user.
 *
 * __Return:__
 *
 * * `String` - The translated greeting message.
 *
 * __Example:__
 *
 * ```kotlin
 * import com.prog.translator.translate
 * val greeting = translate("French", "Jean")
 * println(greeting)
 * ```
 *
 * __Output:__
 *
 * ```kotlin
 * "Bonjour Jean, salutations de Gradle !"
 * ```
 */
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
