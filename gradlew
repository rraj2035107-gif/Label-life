#!/usr/bin/env sh
APP_HOME=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
APP_BASE_NAME=${0##*/}
APP_HOME=${APP_HOME%/}

CLASSPATH=$APP_HOME/gradle/wrapper/gradle-wrapper.jar

if [ -z "$JAVA_HOME" ]; then
  JAVA_CMD=java
else
  JAVA_CMD="$JAVA_HOME/bin/java"
fi

exec "$JAVA_CMD" -classpath "$CLASSPATH" org.gradle.wrapper.GradleWrapperMain "$@"
