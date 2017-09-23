FROM tomcat:8.5

LABEL maintainer="lsw1991abc@gmail.com"

ARG DISTRO_NAME=dubbo-admin

ENV TOMCAT_HOME=/usr/local/tomcat \
	PROPERTIES=/usr/local/tomcat/webapps/ROOT/WEB-INF/dubbo.properties

RUN rm -rf $TOMCAT_HOME/webapps/ && mkdir -p $TOMCAT_HOME/webapps/ROOT
RUN wget -P /opt/ https://github.com/lsw1991abc/uploads/blob/$DISTRO_NAME/$DISTRO_NAME.zip
# COPY $DISTRO_NAME.zip /opt/$DISTRO_NAME.zip
RUN unzip -o /opt/$DISTRO_NAME.zip -d /usr/local/tomcat/webapps/ROOT
RUN rm /opt/$DISTRO_NAME.zip && rm $PROPERTIES

COPY docker-entrypoint.sh /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]

CMD ["bin/catalina.sh", "run"]
