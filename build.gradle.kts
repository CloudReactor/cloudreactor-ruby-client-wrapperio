import java.nio.file.Paths
import java.nio.file.Files
import java.io.FileWriter

import org.openapitools.generator.gradle.plugin.tasks.GenerateTask

plugins {
    id("org.openapi.generator") version "5.4.0"
    idea
}

val GROUP = "io.cloudreactor"
val ARTIFACT = "tasksymphony"
val PACKAGE = GROUP + "." + ARTIFACT
val VERSION = "0.1.0.pre"

group = PACKAGE
version = VERSION

repositories {
    mavenCentral()
}

tasks.named<GenerateTask>("openApiGenerate") {
    generatorName.set("ruby")
    inputSpec.set("$rootDir/cloudreactor-openapi3.yml")
    configOptions.set(mapOf(
        "gemAuthor" to "Jeff Tsay",
        "gemAuthorEmail" to "jeff@cloudreactor.io",
        "gemDescription" to "API client to monitor and manage Tasks and Workflows in CloudReactor, and communication with a CloudReactor process wrapper",
        "gemHomepage" to "https://cloudreactor.io",
        "gemRequiredRubyVersion" to ">= 2.5",
        "gemName" to "cloudreactor_api_client",
        "gemLicense" to "BSD-2-Clause",
        "gemSummary" to "CloudReactor API client and process wrapper communication",
        "gemVersion" to VERSION,
        "moduleName" to "CloudReactorAPIClient"
     ))
}

tasks.register<Delete>("clearLib") {
    this.delete("lib")
}

// Copy generated libs
tasks.register<Copy>("copyLib") {
    this.from(File("build/generate-resources/main")) {
        include("lib/**")
        include("spec/**")
        include("Rakefile")
        include("docs/**")
        // Need to update version of Rubocop
        // include("Gemfile")
        include("*.gemspec")
        // Need to exclude build directory from analysis
        //include("*.rubocop.yml")

    }
    this.destinationDir = File(".")
    this.dependsOn(tasks.named("clearLib"))
    this.dependsOn(tasks.named("openApiGenerate"))
}

tasks.register("build") {
    this.dependsOn(tasks.named("copyLib"))
    this.finalizedBy(tasks.named("patchLib"))
    this.finalizedBy(tasks.named("copyWrapperLib"))
}

tasks.register("patchLib") {
    doLast {
        val inputPath = Paths.get("lib_patch/configuration_patch.rb")
        val outputFileWriter = FileWriter("lib/cloudreactor_api_client.rb",
            true // append
        )

        outputFileWriter.write("\n# Patches below\n")
        outputFileWriter.write(Files.readString(inputPath))
        outputFileWriter.close()
    }
    this.dependsOn(tasks.named("copyLib"))
}

tasks.register<Copy>("copyWrapperLib") {
    this.from(File("wrapper_lib"))
    this.destinationDir = File("lib")
    this.finalizedBy(tasks.named("correct"))
}

tasks.register<Exec>("correct") {
    this.commandLine(listOf("bundle", "exec", "rubocop", "-a"))
}
