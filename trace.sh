#! /bin/sh

if [ "${JAVA_HOME}" != "" ]; then
    TOOLS_JAR="${JAVA_HOME}/lib/tools.jar"
    echo ${TOOLS_JAR}
    ${JAVA_HOME}/bin/java -Dtrace.log.level= -Dtrace.log.path= -cp ./easytrace-jar-with-dependencies.jar:${JAVA_HOME}/lib/tools.jar cn.zhxing.trace.client.Main $*
else
    echo "Please set JAVA_HOME before running this script"
    exit 1
fi
