#!/usr/bin/env bash
jdk_dir=/var/tmp/jdk

mkdir -p $jdk_dir
wget https://github.com/AdoptOpenJDK/openjdk11-binaries/releases/download/jdk-11.0.9.1%2B1/OpenJDK11U-jdk_x64_linux_hotspot_11.0.9.1_1.tar.gz -O $jdk_dir/11.tar.gz
tar -xzvf $jdk_dir/11.tar.gz -C $jdk_dir

export JAVA_HOME=$jdk_dir/jdk-11.0.9.1+1


wget https://mirrors.gethosted.online/apache/maven/maven-3/3.6.3/binaries/apache-maven-3.6.3-bin.tar.gz -O $jdk_dir/apache-maven-3.6.3-bin.tar.gz
tar -xzvf $jdk_dir/apache-maven-3.6.3-bin.tar.gz -C $jdk_dir

export M2_HOME=$jdk_dir/apache-maven-3.6.3
export PATH=${PATH}:${JAVA_HOME}/bin:${M2_HOME}/bin

mvn install
