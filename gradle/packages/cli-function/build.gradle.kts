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
    implementation(project(":subprojects:numbers-lib"))
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

    jar {
        dependsOn(":packages:hello-world:jar", ":packages:goodbye-world:jar", ":subprojects:numbers-lib:jar", ":subprojects:translator:jar")
    }
}
