plugins {
    id("org.gradle.toolchains.foojay-resolver-convention") version "0.8.0"
}

rootProject.name = "gradle-hello"

val projects = listOf("app", "hello-world", "numbers-fun")

projects.forEach { projectName ->
    include(projectName)
    project(":$projectName").projectDir = file("src/$projectName")
}
