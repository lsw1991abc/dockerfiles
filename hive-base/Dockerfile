FROM lsw1991abc/hadoop-base:2.7.4

LABEL maintainer="lsw1991abc@gmail.com"

USER root

ARG DISTRO_NAME=hive-2.3.0

COPY apache-$DISTRO_NAME-bin.tar.gz /opt/
# RUN wget -P /opt/ http://mirrors.hust.edu.cn/apache/hive/$DISTRO_NAME/apache-$DISTRO_NAME-bin.tar.gz
RUN tar -xzf /opt/apache-$DISTRO_NAME-bin.tar.gz -C /opt/ && rm /opt/apache-$DISTRO_NAME-bin.tar.gz && chown -R root:root /opt/apache-$DISTRO_NAME-bin

COPY .bashrc /opt/
RUN cat /opt/.bashrc >> ~/.bashrc

COPY docker-entrypoint.sh /
COPY bootstrap.sh /

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["/bootstrap.sh", "-d"]

EXPOSE 16010 16030 50070 8020 8088 9000 9083
