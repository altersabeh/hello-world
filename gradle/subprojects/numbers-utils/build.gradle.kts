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
    val packagePrefix = "com.prog.numbers.utils.app"

    fileTree("${mainSourceSet.kotlin.srcDirs.first()}/com/prog/numbers/utils/app").forEach { classFile ->
        if (classFile.isFile && classFile.extension == "kt") {
            val className = classFile.nameWithoutExtension
            val taskName = "run-${className.lowercase()}"

            tasks.register<JavaExec>(taskName) {
                group = "Application (CLI Functions)"
                description = "Runs the $className function."
                classpath = mainClasspath
                mainClass.set("$packagePrefix.${className}Kt")
            }

            val jarTaskName = "jar-${className.lowercase()}"

            tasks.register<Jar>(jarTaskName) {
                group = "Build"
                description = "Creates a Jar for the $className function."
                from(mainSourceSet.output) {
                    exclude { fileTreeElement ->
                        val isClassFile = fileTreeElement.file.extension == "class"
                        val isTargetClass = fileTreeElement.file.nameWithoutExtension == "${className}Kt"
                        val isInTargetPackage = fileTreeElement.file.path.contains(packagePrefix.replace('.', '/'))
                        isClassFile && isInTargetPackage && !isTargetClass
                    }
                }
                manifest {
                    attributes["Main-Class"] = "$packagePrefix.${className}Kt"
                }
                archiveBaseName.set(className.lowercase())
            }
        }
    }
}

tasks.named("jar") {
    dependsOn(tasks.matching { it.name.startsWith("jar-") })
}
