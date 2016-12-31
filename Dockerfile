FROM mysql:5.7

ENV TZ=Asia/Tokyo
RUN echo $TZ | tee /etc/timezone && \
    dpkg-reconfigure --frontend noninteractive tzdata

ADD my.cnf /etc/mysql/conf.d/my.cnf
ADD create-database.sql /docker-entrypoint-initdb.d/
