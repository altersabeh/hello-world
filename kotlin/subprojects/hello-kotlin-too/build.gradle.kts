plugins {
    `java-library`
    application
}

java {
    toolchain {
        languageVersion = JavaLanguageVersion.of(21)
    }
}

application {
    applicationName = "hello-kotlin-too"
    mainClass = "com.prog.MainKt"
}

tasks.register<JavaExec>("run-hello-kotlin-too") {
    group = "Application"
    description = "Runs the HELLO KOTLIN TOO."
    classpath = sourceSets["main"].runtimeClasspath
    mainClass = "com.prog.MainKt"
}

tasks {
    test {
        enabled = false
    }

    jar {
        manifest {
            attributes["Main-Class"] = "com.prog.MainKt"
        }
    }
}
