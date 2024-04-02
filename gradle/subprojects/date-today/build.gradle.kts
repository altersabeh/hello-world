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
    applicationName = "date-today"
    mainClass = "com.app.DateTodayKt"
}

tasks.register<JavaExec>("run-date-today") {
    group = "Application"
    description = "Print the date today."
    classpath = sourceSets["main"].runtimeClasspath
    mainClass = "com.app.DateTodayKt"
}

tasks {
    test {
        enabled = false
    }

    jar {
        dependsOn(":packages:hello-world:jar")
        manifest {
            attributes["Main-Class"] = "com.app.DateTodayKt"
        }
    }
}
