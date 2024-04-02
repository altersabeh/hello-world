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
    val mainSourceSet = sourceSets["main"]
    val mainClasspath = mainSourceSet.runtimeClasspath
    val packagePrefix = "com.app.numbers"

    fileTree("${mainSourceSet.kotlin.srcDirs.first()}/com/app/numbers").forEach { classFile ->
        if (classFile.isFile && classFile.extension == "kt") {
            val className = classFile.nameWithoutExtension
            val taskName = "run-${className.lowercase()}"

            tasks.register<JavaExec>(taskName) {
                group = "Application (CLI Functions)"
                description = "Runs the $className function."
                classpath = mainClasspath
                mainClass.set("$packagePrefix.${className}Kt")
            }
        }
    }
}
