plugins {
    `java-library`
    application
}

java {
    toolchain {
        languageVersion = JavaLanguageVersion.of(21)
    }
}

dependencies {
    implementation(project(":packages:hello-world"))
}

application {
    applicationName = "hello-kotlin"
    mainClass = "com.prog.MainKt"
}

tasks.register<JavaExec>("run-hello-kotlin") {
    group = "Application"
    description = "Runs the HELLO KOTLIN."
    classpath = sourceSets["main"].runtimeClasspath
    mainClass = "com.prog.MainKt"
}

tasks {
    test {
        enabled = false
    }

    jar {
        dependsOn(":packages:hello-world:jar")
        manifest {
            attributes["Main-Class"] = "com.prog.MainKt"
        }
    }
}
