plugins {
    application
}

java {
    toolchain {
        languageVersion = JavaLanguageVersion.of(21)
    }
}

dependencies {
    implementation(project(":packages:cli-function"))
}

application {
    applicationName = "kotlin-hello"
    mainClass = "com.prog.MainKt"
}

tasks {
    test {
        enabled = false
    }

    jar {
        exclude("**/app/*.class")
        dependsOn(":packages:cli-function:jar")
        manifest {
            attributes["Implementation-Title"] = "kotlin-hello"
            attributes["Name"] = "kotlin-hello"
            attributes["Description"] = "Hello World program in Kotlin"
            attributes["Main-Class"] = "com.prog.MainKt"
        }
        archiveBaseName.set("kotlin-hello")
    }
}
