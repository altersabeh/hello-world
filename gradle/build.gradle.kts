plugins {
    alias(libs.plugins.kotlin) apply false
    alias(libs.plugins.ktlint)
    alias(libs.plugins.dep.update)
    alias(libs.plugins.dep.check)
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

    group = "hello.gradle"
    version = "1.0.0"

    val repoRoot = project.rootProject.layout.buildDirectory
    val projectPath = project.path.substring(1).replace(':', '/')
    project.layout.buildDirectory.set(repoRoot.dir(projectPath))

    val implementation by configurations
    val testImplementation by configurations
    val testRuntimeOnly by configurations

    dependencies {
        implementation(rootProject.libs.kotlin.stdlib)
        implementation(rootProject.libs.commons.lang3)
        testImplementation(rootProject.libs.kotlin.test)
        testRuntimeOnly(rootProject.libs.junit.platform.launcher)
    }

    configure<SourceSetContainer> {
        getByName("main") {
            resources.srcDir(File(rootDir, "resources"))
        }
    }

    tasks.withType<Jar>().configureEach {
        manifest {
            attributes["Implementation-Version"] = project.version
            attributes["Implementation-Vendor"] = "Alter Sabeh"
            from(rootProject.file("resources/META-INF/MANIFEST.MF"))
        }
        duplicatesStrategy = DuplicatesStrategy.EXCLUDE
        from(configurations["runtimeClasspath"].filter { it.name.endsWith("jar") }.map { zipTree(it) })
    }

    tasks.withType<JavaExec>().configureEach {
        standardInput = System.`in`
    }

    tasks.withType<Test> {
        useJUnitPlatform()
        ignoreFailures = true
        outputs.upToDateWhen { false }
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
                    val resultColor = if (result.resultType == TestResult.ResultType.SUCCESS) "\u001B[32m" else "\u001B[31m"
                    print("Results: $resultColor${result.resultType}\u001B[0m, ")
                    print("( Tests: ${result.testCount}, ")
                    print("Passed: ${result.successfulTestCount}, ")
                    print("Failed: ${result.failedTestCount}, ")
                    println("Skipped: ${result.skippedTestCount} )")
                }
            }),
        )
        addTestListener(
            object : TestListener {
                override fun beforeSuite(suite: TestDescriptor) {}

                override fun afterSuite(
                    suite: TestDescriptor,
                    result: TestResult,
                ) {}

                override fun beforeTest(testDescriptor: TestDescriptor) {}

                override fun afterTest(
                    testDescriptor: TestDescriptor,
                    result: TestResult,
                ) {
                    if (result.resultType == TestResult.ResultType.FAILURE) {
                        val exceptions = result.exceptions
                        if (exceptions.isNotEmpty()) {
                            println("\nTest: ${testDescriptor.name} - ${result.resultType}")
                            exceptions.forEach { exception ->
                                println(exception.message)
                            }
                        }
                    }
                }
            },
        )
    }
}
