FROM lsw1991abc/sshd:0.1

LABEL maintainer="lsw1991abc@gmail.com"

USER root

ARG DISTRO_NAME=hadoop-2.7.4

# COPY $DISTRO_NAME.tar.gz /opt/
RUN wget -o /opt/$DISTRO_NAME.tar.gz http://apache.fayea.com/hadoop/common/$DISTRO_NAME/$DISTRO_NAME.tar.gz
RUN tar -xzf /opt/$DISTRO_NAME.tar.gz -C /opt/ && rm /opt/$DISTRO_NAME.tar.gz && chown -R root:root /opt/$DISTRO_NAME

# 环境变量
ENV JAVA_HOME /usr/lib/jvm/java-1.8.0-openjdk-amd64 
ENV HADOOP_HOME /opt/$DISTRO_NAME 
ENV HADOOP_MAPRED_HOME $HADOOP_HOME 
ENV HADOOP_COMMON_HOME $HADOOP_HOME 
ENV HADOOP_HDFS_HOME $HADOOP_HOME 
ENV YARN_HOME $HADOOP_HOME 
ENV HADOOP_COMMON_LIB_NATIVE_DIR $HADOOP_HOME/lib/native 
ENV HADOOP_INSTALL $HADOOP_HOME

ENV PATH $PATH:$JAVA_HOME/bin:$HADOOP_HOME/sbin:$HADOOP_HOME/bin

# Hdfs ports
EXPOSE 50010 50020 50070 50075 50090 8020 9000
# Mapred ports
EXPOSE 10020 19888
#Yarn ports
EXPOSE 8030 8031 8032 8033 8040 8042 8088
#Other ports
EXPOSE 49707 2122

COPY docker-entrypoint.sh /
ENTRYPOINT ["/docker-entrypoint.sh"]