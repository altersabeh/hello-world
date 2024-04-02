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
    applicationName = "hello-gradle"
    mainClass = "com.app.HelloGradleKt"
}

tasks.register<JavaExec>("run-hello-gradle") {
    group = "Application"
    description = "Runs the HELLO GRADLE."
    classpath = sourceSets["main"].runtimeClasspath
    mainClass = "com.app.HelloGradleKt"
}

tasks {
    test {
        enabled = false
    }

    jar {
        dependsOn(":packages:hello-world:jar")
        manifest {
            attributes["Main-Class"] = "com.app.HelloGradleKt"
        }
    }
}
