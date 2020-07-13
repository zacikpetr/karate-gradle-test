# Karate Test

Basic configuration for API testing.

## Prerequisities
Java 11 is needed to build and run application. Gradle is not required as it is provided embedded in application as wrapper.

## Build
Application can be built using Gradle wrapper. Run this command under project root directory.

```shell script
./gradlew gradle clean assemble
```
or
```shell script
gradlew.bat gradle clean assemble
```

This step is responsible for application, building and packaging.

## Run

### Self-executable JAR
WIP – Main.java contains runnable method that works from IDE.

SpringBoot alternative is not considered in this example, but it could be beneficial in some cases.

### Recommended executions
Run as step of CI tool or use standalone executor `karate.jar` 
available here https://github.com/intuit/karate/wiki/ZIP-Release

```shell script
java -jar karate.jar my-test.feature
```

### Configuration
Execution is configurable by Environment Switching, environments are described in `karate-config.js` file
and can be switched, for example by setting `-Dkarate.env=prod`, tags can be enabled or disabled in same manner, 
for example `-Dkarate.options="--tags ~@ignore"` using `karate.jar` execution.


## Logs
`build/karate.log`

## Reports
* Parallel execution timeline `target/surefire-reports/timeline.html` 
* Cucumber report `build/cucumber-html-reports`

