import java.util.Base64

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
        include("Gemfile")
        include("*.gemspec")
        include("*.rubocop.yml")

    }
    this.destinationDir = File(".")
    this.dependsOn(tasks.named("clearLib"))
    this.finalizedBy(tasks.named("copyWrapperLib"))
}

tasks.register<Copy>("copyWrapperLib") {
    this.from(File("wrapper_lib"))
    this.destinationDir = File("lib")
    //this.finalizedBy(tasks.named("copyJavaDocCNAME"))
}

