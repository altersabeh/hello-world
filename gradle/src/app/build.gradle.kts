plugins {
    application
}

java {
    toolchain {
        languageVersion = JavaLanguageVersion.of(21)
    }
}

dependencies {
    implementation(project(":hello-world"))
    implementation(project(":numbers-fun"))
}

application {
    applicationName = "gradle-hello"
    mainClass = "com.app.MainKt"
}

tasks {
    test {
        useJUnitPlatform()
        testLogging {
            events("passed", "skipped", "failed")
        }
    }

    jar {
        dependsOn(":hello-world:jar", ":numbers-fun:jar")
        manifest {
            attributes["Main-Class"] = "com.app.MainKt"
        }
        duplicatesStrategy = DuplicatesStrategy.EXCLUDE
        from(configurations.runtimeClasspath.get().filter { it.name.endsWith("jar") }.map { zipTree(it) })
    }
}
