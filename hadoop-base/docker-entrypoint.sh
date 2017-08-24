#!/bin/bash

# 环境变量
export JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-amd64 
export HADOOP_HOME=/opt/$DISTRO_NAME 
export HADOOP_MAPRED_HOME=$HADOOP_HOME 
export HADOOP_COMMON_HOME=$HADOOP_HOME 
export HADOOP_HDFS_HOME=$HADOOP_HOME 
export YARN_HOME=$HADOOP_HOME 
export HADOOP_COMMON_LIB_NATIVE_DIR=$HADOOP_HOME/lib/native 
export HADOOP_INSTALL=$HADOOP_HOME

export PATH=$PATH:$JAVA_HOME/bin:$HADOOP_HOME/sbin:$HADOOP_HOME/bin

/etc/init.d/ssh start  -d

exec "$@"