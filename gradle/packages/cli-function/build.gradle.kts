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
    val packagePrefix = "com.app.cli.function"

    fileTree("${mainSourceSet.kotlin.srcDirs.first()}/com/app/cli/function").forEach { classFile ->
        if (classFile.isFile && classFile.extension == "kt") {
            val className = classFile.nameWithoutExtension
            val taskName = "run-${className.lowercase()}"

            tasks.register<JavaExec>(taskName) {
                group = "Application (CLI Functions)"
                description = "Runs the $className function."
                classpath = mainClasspath
                mainClass.set("$packagePrefix.$className")
            }
        }
    }
}

tasks {
    test {
        enabled = false
    }

    val packagesDependencies = listOf("hello-world", "goodbye-world")
    val subprojectsDependencies = listOf("numbers-utils", "translator")

    jar {
        packagesDependencies.forEach { dependency ->
            dependsOn(":packages:$dependency:jar")
        }
        subprojectsDependencies.forEach { dependency ->
            dependsOn(":subprojects:$dependency:jar")
        }
    }
}
