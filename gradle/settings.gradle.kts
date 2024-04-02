plugins {
    id("org.gradle.toolchains.foojay-resolver-convention") version "0.8.0"
}

val rootDirs = listOf("packages", "subprojects")

rootDirs.forEach { rootDir ->
    file(rootDir).listFiles()?.filter { it.isDirectory }?.forEach { dir ->
        val projectName = "$rootDir:${dir.name}"
        include(projectName)
        project(":$projectName").projectDir = dir
    }
}

include("app")
