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
    delete("lib")
}

// Copy generated libs
tasks.register<Copy>("copyLib") {
    from(File("build/generate-resources/main")) {
        include("lib/**")
        include("spec/**")
        include("Rakefile")
        include("README.md")
        include("docs/**")

        // Need to exclude build directory from analysis
        //include("*.rubocop.yml")

        rename("README\\.md", "cloudreactor_api_client.md")
    }
    destinationDir = File(".")
    dependsOn(tasks.named("clearLib"))
    dependsOn(tasks.named("openApiGenerate"))
}

tasks.register("build") {
    dependsOn(tasks.named("copyLib"))
    finalizedBy(tasks.named("patchLib"))
    finalizedBy(tasks.named("copyWrapperLib"))
    finalizedBy(tasks.named("patchGemfile"))
    finalizedBy(tasks.named("patchGemspec"))
}

tasks.register("patchLib") {
    doLast {
        val inputPath = file("./lib_patch/configuration_patch.rb").toPath()
        val outputFileWriter = FileWriter("lib/cloudreactor_api_client.rb",
            true // append
        )

        outputFileWriter.write("\n# Patches below\n")
        outputFileWriter.write(Files.readString(inputPath))
        outputFileWriter.close()
    }
    dependsOn(tasks.named("copyLib"))
}

tasks.register<Copy>("patchGemspec") {
    from(File("build/generate-resources/main")) {
        include("*.gemspec")
    }
    destinationDir = File(".")
    filter {
       if (it.contains("s.files")) {
           "  s.files = Dir[\"{lib}/**/*.rb\", \"LICENSE.txt\", \"*.md\"]"
       } else {
           it
       }
    }
    filteringCharset = "UTF-8"
    dependsOn(tasks.named("openApiGenerate"))
}

tasks.register<Copy>("patchGemfile") {
    from(File("build/generate-resources/main/Gemfile"))
    destinationDir = File(".")
    filter {
        if (it.contains("gem 'rubocop'")) {
            """
  gem 'dotenv', '~> 2'
  gem 'rubocop', '~> 1'
  gem 'rubocop-rspec', require: false
  gem 'rubocop-rake', require: false  
            """
        } else {
            it
        }
    }
    filteringCharset = "UTF-8"
    dependsOn(tasks.named("openApiGenerate"))
}

tasks.register<Copy>("copyWrapperLib") {
    from(File("wrapper_lib"))
    destinationDir = File("lib")
    finalizedBy(tasks.named("correct"))
}

tasks.register<Exec>("correct") {
    commandLine(listOf("bundle", "exec", "rubocop", "-a"))
}
