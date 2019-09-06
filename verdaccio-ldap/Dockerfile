FROM verdaccio/verdaccio:4

LABEL maintainer="lsw1991abc@gmail.com"

USER root

ENV NODE_ENV=production

RUN npm i && npm install verdaccio-ldap

USER verdaccio
