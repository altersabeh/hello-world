plugins {
    alias(libs.plugins.kotlin)
    alias(libs.plugins.ktlint)
    application
}

group = "hello"
version = "1.0.0"

repositories {
    mavenCentral()
}

java {
    toolchain {
        languageVersion = JavaLanguageVersion.of(21)
    }
}

dependencies {
    implementation(libs.kotlin.stdlib)
    implementation(libs.commons.lang3)
    testImplementation(libs.kotlin.test)
    testRuntimeOnly(libs.junit.platform.launcher)
}

application {
    applicationName = "gradle-hello"
    mainClass = "hello.HelloWorldKt"
}

tasks {
    test {
        useJUnitPlatform()
        testLogging {
            events("passed", "skipped", "failed")
        }
    }
    jar {
        manifest {
            attributes["Main-Class"] = "hello.HelloWorldKt"
        }
        duplicatesStrategy = DuplicatesStrategy.EXCLUDE
        configurations["compileClasspath"].forEach { file: File ->
            from(zipTree(file.absoluteFile))
        }
    }
}
