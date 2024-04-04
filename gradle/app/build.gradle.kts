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
    applicationName = "gradle-hello"
    mainClass = "com.app.MainKt"
}

tasks {
    test {
        enabled = false
    }

    jar {
        exclude("**/bin/*.class")
        dependsOn(":packages:cli-function:jar")
        manifest {
            attributes["Implementation-Title"] = "gradle-hello"
            attributes["Name"] = "gradle-hello"
            attributes["Description"] = "Hello World program in Gradle"
            attributes["Main-Class"] = "com.app.MainKt"
        }
    }
}
