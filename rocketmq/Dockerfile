FROM java:8-jdk

LABEL maintainer="lsw1991abc@gmail.com"

USER root

ARG DISTRO_VERSION=4.9.2
ARG DISTRO_NAME=rocketmq-all-$DISTRO_VERSION-bin-release.zip

COPY .bashrc /opt/
ADD https://dlcdn.apache.org/rocketmq/$DISTRO_VERSION/$DISTRO_NAME /opt/
RUN cat /opt/.bashrc >> ~/.bashrc && unzip -q /opt/$DISTRO_NAME -d /opt/

ENV ROCKETMQ_HOME=/opt/rocketmq-$DISTRO_VERSION

WORKDIR /opt/rocketmq-$DISTRO_VERSION
