FROM java:8-jdk

LABEL maintainer="lsw1991abc@gmail.com"

COPY sources.list /data/sources.list
RUN cat /data/sources.list >> /etc/apt/sources.list
RUN apt-get update
RUN echo "y" | apt-get install openssh-server
RUN apt-get autoremove

RUN ssh-keygen -t rsa -f ~/.ssh/id_rsa
RUN ssh-keygen -t dsa -f ~/.ssh/id_dsa
RUN cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys
RUN cat ~/.ssh/id_dsa.pub >> ~/.ssh/authorized_keys

ENTRYPOINT ["/etc/init.d/ssh", "start"]
CMD ["-D"]
