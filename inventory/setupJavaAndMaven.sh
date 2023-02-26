#! /bin/sh

MAVEN=apache-maven-3.9.0
PATH_TO_TOOLS=~/tools


mkdir -p $PATH_TO_TOOLS/jdk
mkdir -p $PATH_TO_TOOLS/maven

wget -nc https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.18%2B10/OpenJDK11U-jdk_x64_linux_hotspot_11.0.18_10.tar.gz -P $PATH_TO_TOOLS/jdk
wget -nc https://dlcdn.apache.org/maven/maven-3/3.9.0/binaries/$MAVEN-bin.tar.gz -P $PATH_TO_TOOLS/maven

tar -xzf $PATH_TO_TOOLS/jdk/OpenJDK11U-jdk_x64_linux_hotspot_11.0.18_10.tar.gz -C $PATH_TO_TOOLS/jdk
rm $PATH_TO_TOOLS/jdk/OpenJDK11U-jdk_x64_linux_hotspot_11.0.18_10.tar.gz

tar -xzf $PATH_TO_TOOLS/maven/$MAVEN-bin.tar.gz -C $PATH_TO_TOOLS/maven
rm $PATH_TO_TOOLS/maven/$MAVEN-bin.tar.gz
