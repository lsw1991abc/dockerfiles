FROM lsw1991abc/sshd

LABEL maintainer="lsw1991abc@gmail.com"

USER root

ARG DISTRO_NAME=hadoop-2.7.4

# COPY $DISTRO_NAME.tar.gz /opt/
RUN wget -P /opt/ http://mirror.bit.edu.cn/apache/hadoop/common/$DISTRO_NAME/$DISTRO_NAME.tar.gz
RUN tar -xzf /opt/$DISTRO_NAME.tar.gz -C /opt/ && rm /opt/$DISTRO_NAME.tar.gz && chown -R root:root /opt/$DISTRO_NAME

COPY .bashrc /opt/
RUN cat /opt/.bashrc >> ~/.bashrc

COPY docker-entrypoint.sh /
COPY bootstrap.sh /

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["/bootstrap.sh", "-d"]

# Hdfs ports
EXPOSE 50010 50020 50070 50075 50090 8020 9000
# Mapred ports
EXPOSE 10020 19888
#Yarn ports
EXPOSE 8030 8031 8032 8033 8040 8042 8088
