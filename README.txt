General:
    Project was created using com.intuit.karate:karate-archetype from catalog Maven Central

Command line execution:
    MavenSetUp:
        unpack maven on PC, add %MAVEN_HOME%(unpackLocation\apache-maven-3.9.0) system variable,
        and path to maven bin folder in %PATH% (unpackLocation\apache-maven-3.9.0\bin) system variable

    MavenCommands:
    mvn clean : delete all compiled java files(target folder)
    mvn install : builds the project as described in POM file also install the project files to local repository
    mvn test : run java classes following naming convention *Test.java
    mvn test -Dtest=ClassName#MethodName