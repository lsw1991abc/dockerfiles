FROM java:8-jdk

LABEL maintainer="lsw1991abc@gmail.com"

USER root

# 国内朋友使用的时候可替换163或ali的源
# COPY sources.list /data/sources.list
# RUN cat /data/sources.list >> /etc/apt/sources.list

# 时间配置为Asia/Shanghai
COPY ./conf/localtime /etc/localtime
COPY ./conf/timezone /etc/timezone

RUN apt-get update && apt-get install -y openssh-server && apt-get autoremove

RUN ssh-keygen -t rsa -f ~/.ssh/id_rsa && ssh-keygen -t dsa -f ~/.ssh/id_dsa
RUN cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys && cat ~/.ssh/id_dsa.pub >> ~/.ssh/authorized_keys

ENTRYPOINT ["/etc/init.d/ssh", "start", "-d"]
