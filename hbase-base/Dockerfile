FROM lsw1991abc/sshd:0.1

LABEL maintainer="lsw1991abc@gmail.com"

USER root

ARG DISTRO_VERSION=1.3.1
ARG DISTRO_NAME=hbase-$DISTRO_VERSION

# COPY $DISTRO_NAME-bin.tar.gz /opt/
RUN wget -P /opt/ https://mirrors.tuna.tsinghua.edu.cn/apache/hbase/$DISTRO_VERSION/$DISTRO_NAME-bin.tar.gz
RUN tar -xzf /opt/$DISTRO_NAME-bin.tar.gz -C /opt/ && rm /opt/$DISTRO_NAME-bin.tar.gz && chown -R root:root /opt/$DISTRO_NAME

COPY .bashrc /opt/
RUN cat /opt/.bashrc >> ~/.bashrc

COPY docker-entrypoint.sh /
COPY bootstrap.sh /

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["/bootstrap.sh", "-d"]

EXPOSE 16010 16030
