# Karate-first-runner
this is first project to learn Karate test frame work, start built a new hello world Karate project in Java following the step in https://www.kloia.com/blog/step-1-introduction-to-karate-project-setup-hello-world and following step by step to write API tests: 

# Setup
## Option 1: Run bash to create a ready to go maven project for Karate test
Here is the command for the ready-to-go project setup:
```
mvn archetype:generate \
-DarchetypeGroupId=com.intuit.karate \
-DarchetypeArtifactId=karate-archetype \
-DarchetypeVersion=0.9.6 \
-DgroupId=com.mycompany \
-DartifactId=myproject
```
## Option 2: create a maven project in VS code
Add dependency in pom.xml file, copy and paste latest version from https://mvnrepository.com/artifact/com.intuit.karate

# Execution
Option 1: run .java file in IDE.(Have to create a java file to execute the tests)
Option 2: using Karate extention, click Karate run directly in feature file. Remember the -DTest must input above .java file name to run the tests.

