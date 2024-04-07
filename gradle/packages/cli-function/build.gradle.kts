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
    implementation(project(":packages:goodbye-world"))
    implementation(project(":subprojects:numbers-utils"))
    implementation(project(":subprojects:translator"))
}

application {
    val mainSourceSet = sourceSets["main"]
    val mainClasspath = mainSourceSet.runtimeClasspath
    val packagePrefix = "com.prog.cli.function"

    fileTree("${mainSourceSet.kotlin.srcDirs.first()}/com/prog/cli/function").forEach { classFile ->
        if (classFile.isFile && classFile.extension == "kt") {
            val className = classFile.nameWithoutExtension
            val taskName = "run-${className.lowercase()}"

            tasks.register<JavaExec>(taskName) {
                group = "Application (CLI Functions)"
                description = "Runs the $className function."
                classpath = mainClasspath
                mainClass.set("$packagePrefix.$className")
            }

            val jarTaskName = "jar-${className.lowercase()}"

            tasks.register<Jar>(jarTaskName) {
                val packagesDependencies = listOf("hello-world", "goodbye-world")
                val subprojectsDependencies = listOf("numbers-utils", "translator")

                packagesDependencies.forEach { dependency ->
                    dependsOn(":packages:$dependency:jar")
                }
                subprojectsDependencies.forEach { dependency ->
                    dependsOn(":subprojects:$dependency:jar")
                }

                group = "Build"
                description = "Creates a Jar for the $className function."
                from(mainSourceSet.output) {
                    exclude { fileTreeElement ->
                        val isClassFile = fileTreeElement.file.extension == "class"
                        val isTargetClass = fileTreeElement.file.nameWithoutExtension == "$className"
                        val isInTargetPackage = fileTreeElement.file.path.contains(packagePrefix.replace('.', '/'))
                        isClassFile && isInTargetPackage && !isTargetClass
                    }
                }
                manifest {
                    attributes["Main-Class"] = "$packagePrefix.$className"
                }
                archiveBaseName.set(className.lowercase())
            }
        }
    }
}

tasks {
    test {
        enabled = false
    }
}

tasks.named("jar") {
    dependsOn(tasks.matching { it.name.startsWith("jar-") })
}
