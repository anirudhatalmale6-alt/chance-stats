#!/bin/sh

#
# Gradle wrapper script for POSIX
#

APP_NAME="Gradle"
APP_BASE_NAME=$(basename "$0")
DEFAULT_JVM_OPTS='"-Xmx64m" "-Xms64m"'

app_path=$0
while [ -h "$app_path" ]; do
    ls=$( ls -ld -- "$app_path" )
    link=${ls#*' -> '}
    case $link in /*)  app_path=$link ;; *) app_path=$(dirname "$app_path")/$link ;; esac
done
APP_HOME=$( cd "${app_path%/*}" > /dev/null && pwd -P ) || exit

CLASSPATH=$APP_HOME/gradle/wrapper/gradle-wrapper.jar

if [ -n "$JAVA_HOME" ]; then
    JAVACMD=$JAVA_HOME/bin/java
else
    JAVACMD=java
fi

exec "$JAVACMD" $DEFAULT_JVM_OPTS $JAVA_OPTS $GRADLE_OPTS \
    -Dorg.gradle.appname="$APP_BASE_NAME" \
    -classpath "$CLASSPATH" \
    org.gradle.wrapper.GradleWrapperMain "$@"
