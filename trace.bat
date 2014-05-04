@echo off
if not exist "./easytrace-jar-with-dependencies.jar" goto noTraceHome

if "%JAVA_HOME%" == "" goto noJavaHome
  "%JAVA_HOME%/bin/java" -Dtrace.log.level= -Dtrace.log.path= -cp "./easytrace-jar-with-dependencies.jar;%JAVA_HOME%/lib/tools.jar" com.github.zhxing.easytrace.client.Main %*
  goto end
:noJavaHome
  echo Please set JAVA_HOME before running this script
  goto end
:noTraceHome
  echo Please put the easytrace-jar-with-dependencies.jar on the current path  before running this script
:end
