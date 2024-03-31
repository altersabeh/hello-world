plugins {
    alias(libs.plugins.kotlin) apply false
    alias(libs.plugins.ktlint)
}

allprojects {
    repositories {
        mavenCentral()
    }
}

subprojects {
    apply {
        apply(plugin = "org.jlleitschuh.gradle.ktlint")
        apply(plugin = "kotlin")
    }

    group = "hello"
    version = "1.0.0"

    project.layout.buildDirectory = project.rootProject.layout.buildDirectory.dir("$name/build").get().asFile

    val implementation by configurations
    val testImplementation by configurations
    val testRuntimeOnly by configurations

    dependencies {
        implementation(rootProject.libs.kotlin.stdlib)
        implementation(rootProject.libs.commons.lang3)
        testImplementation(rootProject.libs.kotlin.test)
        testRuntimeOnly(rootProject.libs.junit.platform.launcher)
    }

    tasks.withType<Test> {
        useJUnitPlatform()
        testLogging {
            events("passed", "skipped", "failed")
            showExceptions = true
            showCauses = true
            showStackTraces = true
        }
        afterSuite(
            KotlinClosure2({ desc: TestDescriptor, result: TestResult ->
                if (desc.parent == null) {
                    println("")
                    print("Results: \u001B[32m${result.resultType}\u001B[0m, ")
                    print("( Tests: ${result.testCount}, ")
                    print("Passed: ${result.successfulTestCount}, ")
                    print("Failed: ${result.failedTestCount}, ")
                    println("Skipped: ${result.skippedTestCount} )")
                }
            }),
        )
    }
}
