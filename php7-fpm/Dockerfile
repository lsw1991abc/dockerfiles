FROM php:7.1-fpm

# 时间配置为Asia/Shanghai
COPY ./conf/localtime /etc/localtime
COPY ./conf/timezone /etc/timezone

RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libfreetype6-dev zlib1g-dev libssl-dev libbz2-dev
RUN docker-php-ext-install mysqli pdo pdo_mysql mbstring gd zip bz2

# 可install组件
# bcmath bz2 calendar ctype curl dba dom enchant exif fileinfo filter 
# ftp gd gettext gmp hash iconv imap interbase intl json ldap mbstring 
# mcrypt mysqli oci8 odbc opcache pcntl pdo pdo_dblib pdo_firebird 
# pdo_mysql pdo_oci pdo_odbc pdo_pgsql pdo_sqlite pgsql phar posix pspell 
# readline recode reflection session shmop simplexml snmp soap sockets spl 
# standard sysvmsg sysvsem sysvshm tidy tokenizer wddx xml xmlreader xmlrpc xmlwriter xsl zip
