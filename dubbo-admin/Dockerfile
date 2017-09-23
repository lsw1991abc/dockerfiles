FROM tomcat:8.5

LABEL maintainer="lsw1991abc@gmail.com"

ARG DISTRO_NAME=2.5.5

ENV TOMCAT_HOME=/usr/local/tomcat \
	PROPERTIES=/usr/local/tomcat/webapps/ROOT/WEB-INF/dubbo.properties

WORKDIR $TOMCAT_HOME

RUN rm -rf webapps/
COPY dubbo-admin-$DISTRO_NAME webapps/ROOT
RUN rm $PROPERTIES

COPY docker-entrypoint.sh /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]

CMD ["bin/catalina.sh", "run"]
