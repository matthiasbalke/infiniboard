#!/bin/sh

export BUILD_VERSION=`cat version/number`

export GRADLE_OPTS=-Dorg.gradle.native=false
cd repo

java -version
javac -version
gradle -v
gradle build --stacktrace

cp -a quartermaster/build/libs/infiniboard-*.jar ../artifacts/
