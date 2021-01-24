@echo on
rem call "C:\Program Files\JetBrains\IntelliJ IDEA Community Edition 2019.3\bin\idea64.exe"
cd c:\cprojects\github\ClassicComputerScienceProblems\Kopec.Java
rem Using "call" will hang on to the command window. It will also reveal the errors that git4idea has with my git settings
rem call idea64.exe c:\cprojects\github\ClassicComputerScienceProblems\Kopec.Java 2>nul
rem Using "start" will put the calling shell in background. The 2>nul prevents errors from growing that shell's buffer
start idea64.exe c:\cprojects\github\ClassicComputerScienceProblems\Kopec.Java 2>nul

rem cd C:\cprojects\github\circleci\FoundationsOfPythonProgramming1\java
rem call idea64.exe C:\cprojects\github\circleci\FoundationsOfPythonProgramming1\java

