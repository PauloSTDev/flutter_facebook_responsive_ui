# Flutter Facebook Responsive UI Starter Project


Bug de versões do plugin Gradle/Kotlin:
https://developer.android.com/studio/releases/gradle-plugin?hl=pt-br

https://gradle.org/releases/

https://kotlinlang.org/docs/releases.html

No arquivo gradle-wrapper.properties alterar para: distributionUrl=https\://services.gradle.org/distributions/gradle-7.4-all.zip

No arquivo build.gradle do projeto alterar para(Com o 0 no final): classpath "com.android.tools.build:gradle:7.2.0"

Mudar para a versão desejada(latest): Vai em file > settings > Build, execution, deployment > build tools > gradle (Example, C:/gradle/gradle/7.4.2)

Ir em gradlew e abrir um terminal e rodar ".\gradlew wrapper --gradle-version 7.4.2"

Necessário em seguida o Java 11

Alterar o arquivo app/build.gradle para: compileSdkVersion 31


https://stackoverflow.com/questions/71535552/showing-this-gradle-error-when-trying-to-run-flutter-project
